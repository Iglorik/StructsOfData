#pragma once
#include <stdexcept>
#include <cstddef>


template <typename T>
class MyForwardList
{
private:    
    struct Node
    {
        Node(T value = {});

        ~Node() = default;

        Node* _next;
        T _value;
    };

    Node* _head = nullptr;
    Node* _tail = nullptr;

    size_t counterOfElements = 0;
public:
    MyForwardList();

    MyForwardList(const MyForwardList& other);

    MyForwardList(MyForwardList&& other) noexcept;

    MyForwardList& operator=(const MyForwardList& other);

    MyForwardList& operator=(MyForwardList&& other) noexcept;

    ~MyForwardList();

    class Iterator 
    {
    public:
        explicit Iterator(Node* node);

        T& operator*();
        const T& operator*() const;

        T* operator->();
        const T* operator->() const;

        Iterator operator++();
        Iterator operator++(int);

        bool operator==(const Iterator& other) const;
        bool operator!=(const Iterator& other) const;

    private:
        Node* _node;
    };

    T& front() const;

    void pushFront(const T& value);

    void popFront();

    size_t size() const;

    Iterator beforeBegin() noexcept;

    Iterator begin() noexcept;

    Iterator end() noexcept;
};


