#include "Vector.h"





//В этом коде не будет проверки на переполнение типов!
template <typename T>
Vector<T>::Vector() = default;



template <typename T>
Vector<T>::Vector(const T* rawArray, const size_t size, float coef)
{

    if ( coef <= 1.0)
    {
        throw std::invalid_argument("The coef must be greater than 1");
    }

    size_t bufCapacity = size == 0 ? 1 : size;
    T* buffer = new T[bufCapacity];

    try 
    {
        std::copy(rawArray, rawArray + size, buffer);
    }
    catch(...)
    {
        delete[] buffer;
        throw;
    }
    
    _data = buffer;
    _size = size;
    _capacity = bufCapacity;
    _multiplicativeCoef = coef;

}

template <typename T>
Vector<T>::Vector(const Vector<T>& other)
{
    T* buffer = new T[other._size];

    try
    {
        std::copy(other._data, other._data + other._size, buffer);
    }
    catch(...)
    {
        delete[] buffer;
        throw;
    }

    _data = buffer;
    _size = other._size;
    _capacity = _size;
    _multiplicativeCoef = other._multiplicativeCoef;
}

template <typename T>
Vector<T>& Vector<T>::operator=(const Vector<T>& other)
{
    if (this == &other)
    {
        return *this;
    }
    
    T* buffer = new T[other._size];

    try
    {
        std::copy(other._data, other._data + other._size, buffer);
    }
    catch(...)
    {
        delete[] buffer;
        throw;
    }
        
    delete[] _data;
    _data = buffer;
    _size = other._size;
    _capacity = _size;
    _multiplicativeCoef = other._multiplicativeCoef;
  
    return *this;
}

template <typename T>
Vector<T>::Vector(Vector<T>&& other) noexcept
 : _size(other._size), _capacity(other._capacity), _multiplicativeCoef(other._multiplicativeCoef), _data(other._data)
{
    other._size = 0;
    other._capacity = 0;
    other._multiplicativeCoef = 2.0f;
    other._data = nullptr;
}

template <typename T>
Vector<T>& Vector<T>::operator=(Vector<T>&& other) noexcept
{
    if (this == &other)
    {
        return *this;
    }

    if (_data != nullptr)
    {
        delete[] _data;
    }

    _size = other._size;
    _capacity = other._capacity;
    _multiplicativeCoef = other._multiplicativeCoef;
    _data = other._data;

    other._size = 0;
    other._capacity = 0;
    other._multiplicativeCoef = 2.0f;
    other._data = nullptr;

    return *this;
}

template <typename T>
Vector<T>::~Vector()
{
    delete[] _data;
}

template <typename T>
void Vector<T>::pushBack(const T& value)
{
    if (sizeExpansion(1))
    {
        size_t bufCapacity = _capacity;
        T* buffer = new T[bufCapacity];
        try
        {
            std::copy(_data, _data + _size, buffer);
        }
        catch(...)
        {
            delete[] buffer;
            throw;
        }
        
        delete[] _data;
        _data = buffer;
        _capacity = bufCapacity;
    }
        
    _data[_size] = value;
    ++_size;
}

template <typename T>
void Vector<T>::pushFront(const T& value)
{
    if (sizeExpansion(1))
    {
        size_t bufCapacity = _capacity;
        T* buffer = new T[bufCapacity];
        try
        {
            std::copy(_data, _data + _size, buffer);
        }
        catch(...)
        {
            delete[] buffer;
            throw;
        }
        
        delete[] _data;
        _data = buffer;
        _capacity = bufCapacity;
    }

    _data[0] = value;
    ++_size;
}

template <typename T>
void Vector<T>::insert(const T& value, size_t pos)
{
    if (pos > _size)        //случай с _size == 0 тоже сюда попадает, а именно _size == 0 and pos != 0.    
    {
        throw std::out_of_range("Out of range of vector");
    }

    if (sizeExpansion(1))
    {
        size_t bufCapacity = _capacity;
        T* buffer = new T[bufCapacity];

        try
        {
            std::copy(_data, _data + pos, buffer);
            std::copy(_data + pos, _data + _size, buffer + pos + 1);
        }
        catch(...)
        {
            delete[] buffer;
            throw;
        }
        
        delete[] _data;
        _data = buffer;
        _capacity = bufCapacity;
    }
    else
    {
        try
        {
            std::copy(_data + pos, _data + _size, _data + pos + 1);
        }
        catch(...)
        {
            throw;
        }
    }

    _data[pos] = value;
    ++_size;
}

template <typename T>
void Vector<T>::insert(const T* values, size_t size, size_t pos)
{
    if (pos > _size)
    {
        throw std::out_of_range("Out of range of vector");
    }

    if (sizeExpansion(size))
    {
        size_t bufCapacity = _capacity;
        T* buffer = new T[bufCapacity];

        try
        {
            std::copy(_data, _data + pos, buffer);
            std::copy(values, values + size, buffer + pos);
            std::copy(_data + pos, _data + _size, buffer + pos + size); 
        }
        catch(...)
        {
           delete[] buffer;
           throw;
        }

        delete[] _data;
        _data = buffer;
        _capacity = bufCapacity;
    }
    else
    {
        try
        {
            std::copy(values, values + size, _data + pos);
            std::copy(_data + pos, _data + _size, _data + pos + size); 
        }
        catch(...)
        {
           throw;
        }
    }

    _size += size;
}

template <typename T>
void Vector<T>::insert(const Vector<T>& vector, size_t pos)
{
    if (pos > _size)
    {
        throw std::out_of_range("Out of range of vector");
    }

    if (sizeExpansion(vector._size))
    {
        size_t bufCapacity = _capacity;
        T* buffer = new T[bufCapacity];

        try
        {
            std::copy(_data, _data + pos, buffer);
            std::copy(&vector[0], &vector[0] + vector._size, buffer + pos);
            std::copy(_data + pos, _data + _size, buffer + pos + vector._size); 
        }
        catch(...)
        {
           delete[] buffer;
           throw;
        }

        delete[] _data;
        _data = buffer;
        _capacity = bufCapacity;
    }
    else
    {
        try
        {
            std::copy(&vector[0], &vector[0] + vector._size, _data + pos);
            std::copy(_data + pos, _data + _size, _data + pos + vector._size); 
        }
        catch(...)
        {
           throw;
        }
    }
    
    _size += vector._size;
}

template <typename T>
void Vector<T>::popBack()
{
    if (_size == 0)
    {
        throw std::out_of_range("Vector is empty already!");
    }
    else
    {
        --_size;
    }
}

template <typename T>
void Vector<T>::popFront()
{
    if (_size == 0)
    {
        throw std::out_of_range("Vector is empty already!");
    }
    else
    {
        size_t bufCapacity = _capacity;
        T* buffer = new T[bufCapacity];
       
        try
        {
            std::copy(_data + 1, _data + _size, buffer);
        }
        catch(...)
        {
            delete[] buffer;
            throw;
        }

        delete[] _data;
        buffer = _data;
        --_size;
    }
}

template <typename T>
void Vector<T>::erase(size_t pos, size_t count)
{
    if (pos > _size)
    {
        throw::std::out_of_range("Position is out of range of vector");
    }

    if (pos + count  > _size - 1)
    {
       _size = pos;
    }
    else
    {
        size_t bufCapacity = _size;
        T* buffer = new T[bufCapacity];

        try
        {
            std::copy(_data, _data + pos, buffer);
            std::copy(_data + pos + count, _data + _size, buffer + pos);
        }
        catch(...)
        {
            delete[] buffer;
            throw;
        }

        delete[] _data;
        _data = buffer;
        _size -= count;
        _capacity = bufCapacity;
    }
}

template <typename T>
void Vector<T>::eraseBetween(size_t beginPos, size_t endPos)
{
    erase(beginPos, endPos - beginPos);
}

template <typename T>
size_t Vector<T>::size() const
{
    return _size;
}

template <typename T>
size_t Vector<T>::capacity() const
{
    return _capacity;
}

template <typename T>
double Vector<T>::loadFactor() const
{
    return static_cast<double>(_size) / static_cast<double>(_capacity);
}

template <typename T>
T& Vector<T>::operator[](size_t idx)
{
    if (idx >= _size)
    {
        throw std::out_of_range("Index out of range"); 

    }
    else
    {
        return _data[idx];
    }
}

template <typename T>
const T& Vector<T>::operator[](size_t idx) const
{
    if (_data == nullptr && idx >= _size)
    {
        throw std::out_of_range("Index out of range"); 

    }
    else
    {
        return static_cast<const T&>(_data[idx]);
    }
}

template <typename T>
long long Vector<T>::find(const T& value) const
{
    for (int i = 0; i < _size; ++i)
    {
        if (_data[i] == value)
        {
            return i;
        }
    }

    return -1;
}

template <typename T>
void Vector<T>::reserve(size_t capacity)
{
    if (capacity > _capacity)
    {
        size_t bufCapacity = capacity;
        T* buffer = new T[bufCapacity];

        copyArr(buffer, _data, _size);    
        
        delete[] _data;
        _data = buffer;
        _capacity = bufCapacity;
    }
}

template <typename T>
void Vector<T>::shrinkToFit()
{
    size_t bufCapacity = _size;
    T* buffer = new T[bufCapacity];
    
    copyArr(buffer, _data, _size); 
    
    delete[] _data;
    _data = buffer;
    _capacity = bufCapacity;
}

template <typename T>
Vector<T>::Iterator::Iterator(T* ptr) : _ptr(ptr) {}

template <typename T>
T& Vector<T>::Iterator::operator*()
{
    return *_ptr;
}

template <typename T>
const T& Vector<T>::Iterator::operator*() const
{
    return *_ptr;
}

template <typename T>
T* Vector<T>::Iterator::operator->()
{
    return _ptr;
}

template <typename T>
const T* Vector<T>::Iterator::operator->() const
{
    return _ptr;
}

template <typename T>
typename Vector<T>::Iterator Vector<T>::Iterator::operator++()
{
    ++_ptr;
    return *this;
}

template <typename T>
typename Vector<T>::Iterator Vector<T>::Iterator::operator++(int)
{
    Iterator temp = *this;
    ++_ptr;
    return temp;
}

template <typename T>
bool Vector<T>::Iterator::operator==(const Iterator& other) const
{
    if (_ptr == other._ptr)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

template <typename T>
bool Vector<T>::Iterator::operator!=(const Iterator& other) const
{
    if (_ptr != other._ptr)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

template <typename T>
typename Vector<T>::Iterator Vector<T>::begin()
{
    Iterator it(&_data[0]);

    return it;
}

template <typename T>
typename Vector<T>::Iterator Vector<T>::end()
{
    if (_size == 0)
    {
        return this->begin();
    }

    Iterator it(&_data[_size]);
    return it;
}

template <typename T>
void Vector<T>::copyArr(T* destination, const T* source, size_t size)
{
    for (int i = 0; i < size; ++i)
    {
        destination[i] = source[i];
    }
}

template <typename T>
bool Vector<T>::sizeExpansion(size_t size)
{
    if (_size + size >= _capacity)
    {
        if (_capacity == 0)
        {
            ++_capacity;
        }

        while (_size + size >= _capacity)
        {
            _capacity *= _multiplicativeCoef;
        }
        return true;
    }
    return false;
}

template class Vector<int>;
template class Vector<double>;
template class Vector<std::string>;
