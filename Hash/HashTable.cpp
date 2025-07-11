#include "HashTable.h"
#include <cmath>

template <typename T>
HashTable<T>::HashTable(size_t size) noexcept : _capacity(size), _filled(0)
{
    table.resize(_capacity);
}
template <typename T>
HashTable<T>::~HashTable() = default;

template <typename T>
void HashTable<T>::insert(const KeyType &key, const T &value)
{
    std::pair<KeyType, T> kVPair = {key, value};
    size_t id = hash_function(key);

    if (table[id].empty())
    {
        ++_filled;
    }

    table[id].push_front(kVPair);
    
    if (getLoadFactor() > 3.0/4.0)
    {
        _capacity = _capacity * 2;
        std::vector<std::list<std::pair<KeyType, T>>> newTable(_capacity);
        
        for (int i = 0; i < table.size(); ++i)
        {
            for (auto it = table[i].begin(); it != table[i].end(); ++it)
            {
                newTable[i].push_front(*it);
            }
        }

        table = std::move(newTable);
    }
}

template <typename T>
bool HashTable<T>::find(const KeyType &key, T &value) const
{
    size_t id = hash_function(key);

    for (auto it = table[id].begin(); it != table[id].end(); ++it)
    {
        if (it->first == key)
        {
            value = it->second;
            return true;
        }
    }

    return false;
}

template <typename T>
void HashTable<T>::remove(const KeyType &key)
{
    size_t id = hash_function(key);
    bool removeFlag = false;
    
    for (auto it = table[id].begin(); it != table[id].end();)
    {
        if (it->first == key)
        {
            it = table[id].erase(it);
            removeFlag = true;
        }
        else
        {
            ++it;
        }
    }        
    
    if (table[id].empty() && removeFlag)
    {
        --_filled;
    }
}
 
template <typename T>
T& HashTable<T>::operator[](const KeyType &key)
{
    size_t id = hash_function(key);

    for (auto it = table[id].begin(); it != table[id].end(); ++it)
    {
        if (it->first == key)
        {
            return it->second;
        }
    }
}

template <typename T>
double HashTable<T>::getLoadFactor()
{
    if (_capacity == 0)
    {
        return 0.0;
    }
    
    return static_cast<long double>(_filled)/static_cast<long double>(_capacity);
}

template <typename T>
size_t HashTable<T>::hash_function(const KeyType &key) const
{
    size_t hashSum = 5381;

    for (int i = 0; i < key.length(); ++i)
    {
        int symbolOrd = static_cast<int>(key[i]);
        hashSum += ((hashSum << 5) + hashSum) + symbolOrd;
    }

    return hashSum % _capacity;
}

template class HashTable<int>;
template class HashTable<double>;
