//1. В рамках прошлого дз был создан класс пиццерии с
//переменной, в которой хранится пицца, удалите ее.
//Необходимо создать структуру картошки фри,
//в которой будет стоимость и размер картошки и сделать так,
//чтобы в классе пиццерии была одна переменная,
//в которую можно было бы класть и пиццу, и картошку фри.

struct FrenchFries {
    var price: Double
    var size: String
}

class Pizzeria {
    var menu: [String: Double] = ["Margherita": 10.99, "Pepperoni": 12.99]
    var orders: [(pizza: String, quantity: Int)] = []
    var frenchFries: FrenchFries?

    func addPizzaToOrder(pizza: String, quantity: Int) {
        orders.append((pizza, quantity))
    }
}
//2. Добавьте в класс пиццерии функцию,
//которая будет добавлять новую позицию в меню.

func addMenuItem(name: String, price: Double) {
    menu[name] = price
}

//3. Создайте протокол, в котором будут содержаться функции
//открытия и закрытия.

protocol OpenAndClose {
    func open()
    func close()
}

//4. Написать расширение для класса пиццерии,
//в котором будет реализован протокол из пункта 3.

extension Pizzeria: OpenAndClose {
    func open() {
        print("Pizzeria is now open!")
    }

    func close() {
        print("Pizzeria is now closed.")
    }
}

//5. Написать функцию, в которой происходит вычитание
//одного числа из другого. Функция должна работать и с Int,
//и с Double.Функция должна возвращать результат вычитания.

func subtract<T: Numeric>(_ a: T, _ b: T) -> T {
    return a - b
}

// Примеры использования функции:
let result1 = subtract(5, 3) // 2
let result2 = subtract(5.5, 2.3) // 3.2