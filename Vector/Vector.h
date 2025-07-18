#pragma once
#include <cstdlib>
#include <stdexcept>
#include <algorithm>
#include <string>


//! \brief Класс, реализующий С++ контейнер vector для типа double

template <typename T>
class Vector
{
public:
    /*!
        \note Все конструкторы и операторы присваивания, 
		кроме конструктора и оператора присваивания перемещением 
		должны создавать вектор, где _capacity равно _size
    */
    //! Конструктор без параметров
    Vector();
    //! Конструктор с параметрами
    Vector(const T* rawArray, const size_t size, float coef = 2.0f);
    //! Конструктор копирования
    //! \param other - копируемый объект
    explicit Vector(const Vector& other);
    //! Оператор присваивания копированием
    //! \param other - копируемый объект
    Vector& operator=(const Vector& other);
    //! Конструктор перемещения
    //! \param other - перемещаемый объект
    explicit Vector(Vector&& other) noexcept;
    //! Оператор присваивания перемещением
    //! \param other - перемещаемый объект
    Vector& operator=(Vector&& other) noexcept;
    //! Деструктор
    ~Vector();
    
	//! Вставка в конец
    void pushBack(const T& value);
	//! Вставка в начало
    void pushFront(const T& value);

	//! Вставка элемента value в позицию pos
    void insert(const T& value, size_t pos);
	//! Вставка массива элементов типа T в позицию pos
    void insert(const T* values, size_t size, size_t pos);
	//! Вставка содержимого вектора в позицию pos
    void insert(const Vector& vector, size_t pos);

	//! Удаление с конца
    void popBack();
	//! Удаление из начала
    void popFront();

    /*!
        \brief Удалить элемент(ы) из вектора
        \param pos: позиция начала удаляемого участка
        \param count: количество удаляемых элементов
        если (pos + count) > size, то элементы интервала [pos, size) должны быть удалены
    */
    void erase(size_t pos, size_t count = 1);

    /*!
        \brief Удалить элемент(ы) из вектора
        \param beginPos: позиция начала удаляемого участка
        \param endPos: позиция окончания удаляемого участка
        Все элементы интервала [beginPos, endPos) должны быть удалены:
            [1, 2, 3, 4] -> erase(1, 3) -> [1, 4]
        если endPos > size, то элементы интервала [beginPos, size) должны быть удалены
    */
    void eraseBetween(size_t beginPos, size_t endPos);

	//! Количество элементов
    size_t size() const;
	//! Максимальное количество элементов
    size_t capacity() const;
	//! Фактор загруженности
    double loadFactor() const;

    //! Доступ к элементу по индексу
    T& operator[](size_t idx);
    //! Доступ к элементу по индексу
    const T& operator[](size_t idx) const;

    //! Поиск первого вхождения значения
    //! \return - индекс элемента
    long long find(const T& value) const;
   
    //! Если capacity > _capacity, то выделить новый участок памяти размером capacity и перенести вектор туда, иначе - ничего
    void reserve(size_t capacity);
	//! Уменьшить capacity до size
    void shrinkToFit();
	
	//! Класс, реализующий итератор
    class Iterator
    {
        T* _ptr;
    public:
        explicit Iterator(T* ptr);
        T& operator*();
        const T& operator*() const;
        T* operator->();
        const T* operator->() const;
        Iterator operator++();
        Iterator operator++(int);
        bool operator==(const Iterator& other) const;
        bool operator!=(const Iterator& other) const;
    };

	//! Получить итератор на начало вектора
    Iterator begin();
	//! Получить итератор на элемент вектора, следующий за последним
    Iterator end();
private:
    size_t _size = 0; //! текущий размер
    size_t _capacity = 0; //! максимальный размер (количество элементов, под которое выделена память)
    float _multiplicativeCoef = 2.0f; //! коэффициент увеличения _capacity вектора при _size == _capacity
    T* _data = nullptr; //! "сырой" указатель на данные
    
    void copyArr(T* destination, const T* source, size_t size);
    bool sizeExpansion(size_t size);
};
