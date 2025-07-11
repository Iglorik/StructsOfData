#include "ListStackImpl.h"


ListStackImpl::ListStackImpl(const ListStackImpl& other)
{
    *this = other;
}

ListStackImpl& ListStackImpl::operator=(const ListStackImpl& other)
{
    if (this != & other)
    {
        _stackContainer = other._stackContainer;
    }
   
    return *this;
}

void ListStackImpl::push(const ValueType& value)
{
    _stackContainer.pushFront(value);
}

void ListStackImpl::pop()
{
    if (!isEmpty())
    {
        _stackContainer.popFront();
    }
}

const ValueType& ListStackImpl::top() const 
{
    if (!isEmpty())
    {
        return _stackContainer.front();
    }
}

bool ListStackImpl::isEmpty() const
{
    if (size() == 0)
    {
        return 1;
    }

    return 0;
}

size_t ListStackImpl::size() const
{
    return _stackContainer.size();
}
