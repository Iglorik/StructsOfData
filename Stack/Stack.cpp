#include "Stack.h"
#include "VectorStackImpl.h"
#include "ListStackImpl.h"




Stack::Stack(StackContainer container) : _containerType(container)
{
    if (_containerType == StackContainer::Vector)
    {
        _pimpl = new VectorStackImpl();
    }
    else if (_containerType == StackContainer::List)
    {
        _pimpl = new ListStackImpl();
    }
}

Stack::Stack(const ValueType* valueArray, const size_t arraySize, 
          StackContainer container) : Stack(container)
{
    for (int i = 0; i < arraySize; ++i)
    {
        _pimpl->push(valueArray[i]);
    }
}

Stack::Stack(const Stack& copyStack)
{
    *this = copyStack;
}

Stack& Stack::operator=(const Stack& copyStack) 
{
    if (this != &copyStack)
    {
        //for copy-constuctor 
        if (_pimpl != nullptr)
        {
            delete _pimpl;
        }
        
        if (copyStack._containerType == StackContainer::Vector)
        {
            _pimpl = new VectorStackImpl(*dynamic_cast<VectorStackImpl*>(copyStack._pimpl));
        }
        else if (copyStack._containerType == StackContainer::List)
        {
            _pimpl = new ListStackImpl(*dynamic_cast<ListStackImpl*>(copyStack._pimpl));
        } 
    }

    return *this;
}

Stack::Stack(Stack&& moveStack) noexcept
{
    *this = moveStack;
}

Stack& Stack::operator=(Stack&& moveStack) noexcept
{
    if (this != &moveStack)
    {
        //for move-constructor
        if (_pimpl != nullptr)
        {
            delete _pimpl;
        }
        
        _pimpl = moveStack._pimpl;
        _containerType = moveStack._containerType;

        moveStack._pimpl = nullptr;
    }

    return *this;
}

Stack::~Stack()
{
    delete _pimpl;
}

void Stack::push(const ValueType& value)
{
    _pimpl->push(value);
}

void Stack::pop()
{
    _pimpl->pop();
}

const ValueType& Stack::top() const
{
    return _pimpl->top();
}

bool Stack::isEmpty() const
{
    return _pimpl->isEmpty();
}

size_t Stack::size() const
{
    return _pimpl->size();
}