#include "StackImplementation.h"
#include "MyForwardList.h"
#include "Stack.h"


class ListStackImpl : public IStackImplementation
{
public:
    ListStackImpl() = default;

    explicit ListStackImpl(const ListStackImpl& other);

    ListStackImpl& operator=(const ListStackImpl& other);

    void push(const ValueType& value) override final;

    void pop() override final;

    const ValueType& top() const override final;

    bool isEmpty() const override final;

    size_t size() const override final;

private:
    MyForwardList<ValueType> _stackContainer;
};