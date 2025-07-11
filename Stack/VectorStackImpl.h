#include "StackImplementation.h"
#include "Vector.h"
#include "Stack.h"
#include <cstddef>




class VectorStackImpl : public IStackImplementation
{
public:
    VectorStackImpl() = default;

    explicit VectorStackImpl(const VectorStackImpl& other);

    VectorStackImpl& operator=(const VectorStackImpl& other);

    void push(const ValueType& value) override final;

    void pop() override final;

    const ValueType& top() const override final;

    bool isEmpty() const override final;

    size_t size() const override final;

private:
    Vector<ValueType> _stackContainer;
};