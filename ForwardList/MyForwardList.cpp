#include "MyForwardList.h"


template <typename T>
MyForwardList<T>::Node::Node(T value) : _next(nullptr), _value(value) {}



template <typename T>
MyForwardList<T>::MyForwardList() : _head(new Node()), _tail(new Node())
{
    _head -> _next = _tail;
}

template <typename T>
MyForwardList<T>::MyForwardList(const MyForwardList& other) : counterOfElements(other.counterOfElements)
{
    _head = new Node();
    _tail = new Node();
    _head->_next = _tail;

    Node* current = _head;
    Node* otherCurrent = other._head->_next;

    while (otherCurrent != other._tail)
    {
        Node* newNode = new Node(otherCurrent->_value);
        current->_next = newNode;
        current = current->_next;
        otherCurrent = otherCurrent->_next;
    }
    current->_next = _tail;

}    


template <typename T>
MyForwardList<T>::MyForwardList(MyForwardList&& other) noexcept : counterOfElements(other.counterOfElements)  
{
    _head = other._head;
    _tail = other._tail;

    other._head = new Node();
    other._tail = new Node();
    other._head->_next = other._tail;
}

template <typename T>
MyForwardList<T>& MyForwardList<T>::operator=(const MyForwardList& other)
{
    if (this != &other)
    {
        if (_head -> _next != _tail)
        {
            Node* curr = _head;

            while (curr != _tail)
            {
                Node* temp = curr -> _next;
                delete curr;
                curr = temp;
            }
            delete _tail;
        }
        else 
        {
            delete _head;
            delete _tail;
        }
        
        counterOfElements = 0;

        _head = new Node();
        _tail = new Node();
        _head->_next = _tail;

        Node* current = _head;
        Node* otherCurrent = other._head->_next;

        while (otherCurrent != other._tail)
        {
            Node* newNode = new Node(otherCurrent->_value);
            current->_next = newNode;
            current = current->_next;
            otherCurrent = otherCurrent->_next;
            ++counterOfElements;
        }
        current->_next = _tail;
    }

    return *this;
}

template <typename T>
MyForwardList<T>& MyForwardList<T>::operator=(MyForwardList<T>&& other) noexcept
{
    if (this != &other)
    {
        if (_head -> _next != _tail)
        {
            Node* curr = _head;

            while (curr != _tail)
            {
                Node* temp = curr -> _next;
                delete curr;
                curr = temp;
            }
            delete _tail;
        }
        else
        {
            delete _head;
            delete _tail;
        }

        _head = other._head;
        _tail = other._tail;
        counterOfElements = other.counterOfElements;

        other._head = new Node();
        other._tail = new Node();
        other._head->_next = other._tail;
        other.counterOfElements = 0;
    }

    return *this;
}

template <typename T>
MyForwardList<T>::~MyForwardList()
{
    if (_head)
    {
        Node* curr = _head;

        while (curr != _tail)
        {
            Node* temp = curr -> _next;
            delete curr;
            curr = temp;
        }
        delete _tail;
    }
}

template <typename T>
MyForwardList<T>::Iterator::Iterator(Node* node) : _node(node) {}

template <typename T>
T& MyForwardList<T>::Iterator::operator*()
{
    return _node -> _value;
}

template <typename T>
const T& MyForwardList<T>::Iterator::operator*() const
{
    return _node -> _value;
}

template <typename T>
T* MyForwardList<T>::Iterator::operator->()
{
    return &(_node -> _value);
}

template <typename T>
const T* MyForwardList<T>::Iterator::operator->() const
{
    return &(_node -> _value);
}

template <typename T>
typename MyForwardList<T>::Iterator MyForwardList<T>::Iterator::operator++()
{
    _node = _node -> _next;
    return Iterator(_node);
}

template <typename T>
typename MyForwardList<T>::Iterator MyForwardList<T>::Iterator::operator++(int)
{
    Node* temp = _node;
    _node = _node -> _next;

    return Iterator(temp);
}

template <typename T>
bool MyForwardList<T>::Iterator::operator==(const Iterator& other) const
{
    if (_node == other._node)
    {
        return true;
    }

    return false;
}

template <typename T>
bool MyForwardList<T>::Iterator::operator!=(const Iterator& other) const
{
    if (_node == other._node)
    {
        return false;
    }

    return true;
}

template <typename T>
T& MyForwardList<T>::front() const
{
    if (_head -> _next == _tail)
    {
        throw std::runtime_error("List is empty!");
    }

    return _head -> _next ->_value;
}

template <typename T>
void MyForwardList<T>::pushFront(const T& value)
{
    Node* newFirstNode = new Node(value);
    Node* temp = _head -> _next;
    _head -> _next = newFirstNode;
    newFirstNode -> _next = temp;

    ++counterOfElements;
}

template <typename T>
void MyForwardList<T>::popFront()
{
    if (_head->_next != _tail)
    {
        Node* temp = _head->_next->_next;
        delete _head->_next;
        _head->_next = temp;

        --counterOfElements;
    }
}

template <typename T>
size_t MyForwardList<T>::size() const
{
    return counterOfElements;
}

template <typename T>
typename MyForwardList<T>::Iterator MyForwardList<T>::beforeBegin() noexcept
{
    return Iterator(_head);
}

template <typename T>
typename MyForwardList<T>::Iterator MyForwardList<T>::begin() noexcept
{
    return Iterator(_head -> _next);
}

template <typename T>
typename MyForwardList<T>::Iterator MyForwardList<T>::end() noexcept
{
    return Iterator(_tail);
}

template class MyForwardList<int>;
template class MyForwardList<double>;
template class MyForwardList<std::string>;
