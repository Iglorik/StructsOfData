#include "VectorStackImpl.h"





VectorStackImpl::VectorStackImpl(const VectorStackImpl& other)
{
    *this = other;
}

VectorStackImpl& VectorStackImpl::operator=(const VectorStackImpl& other)
{
    if (this != & other)
    {
        _stackContainer = other._stackContainer;
    }
   
    return *this;
}

void VectorStackImpl::push(const ValueType& value)
{
    _stackContainer.pushBack(value);
}

void VectorStackImpl::pop()
{
    if (!isEmpty())
    {
        _stackContainer.popBack();
    } 
}

const ValueType& VectorStackImpl::top() const 
{
    if (!isEmpty())
    {
        return _stackContainer[_stackContainer.size() - 1];
    }
}

bool VectorStackImpl::isEmpty() const 
{
    if (size() == 0)
    {
        return 1;
    }

    return 0;
}

size_t VectorStackImpl::size() const
{
    return _stackContainer.size();
}