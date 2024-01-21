//1. Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)

enum PizzaType {
    case margherita
    case pepperoni
    case hawaiian
    case vegetarian
    case meatLovers
}

//2. Создать структуру пиццы, она должна содержать стоимость,
//вид пиццы, толстое или тонкое тесто и добавки (например,
//дополнительно добавить пепперони, помидоры, сыр).
//Вид пиццы должен быть вложенным типом для структуры пиццы.
//Подсказка: добавки лучше также сделать перечислением.

enum Toppings {
    case pepperoni
    case tomatoes
    case cheese
}

struct Pizza {
    let price: Double
    let type: PizzaType
    let crust: String
    let toppings: [Toppings]
}

//3. Создать класс пиццерии, добавить массив с возможными
//пиццами. Переменная с массивом должна быть приватной.
//Массив задается в инициализаторе.
//4. Написать в классе пиццерии функции для добавления новой
//пиццы и для получения всех доступных пицц.

class Pizzeria {
    private var pizzas: [Pizza]

    init(pizzas: [Pizza]) {
        self.pizzas = pizzas
    }

    func addPizza(pizza: Pizza) {
        pizzas.append(pizza)
    }

    func getAllPizzas() -> [Pizza] {
        return pizzas
    }
}

//5. Создать экземпляр класса пиццерии и добавить в него
//несколько пицц.

let margherita = Pizza(price: 9.99, type: .margherita, crust: "thin", toppings: [.cheese, .tomatoes])
let pepperoni = Pizza(price: 11.99, type: .pepperoni, crust: "thick", toppings: [.cheese, .pepperoni])
let hawaiian = Pizza(price: 12.99, type: .hawaiian, crust: "thin", toppings: [.cheese, .tomatoes])
let vegetarian = Pizza(price: 10.99, type: .vegetarian, crust: "thin", toppings: [.cheese, .tomatoes])
let meatLovers = Pizza(price: 13.99, type: .meatLovers, crust: "thick", toppings: [.cheese, .pepperoni])

let pizzeria = Pizzeria(pizzas: [margherita, pepperoni])
pizzeria.addPizza(pizza: hawaiian)
pizzeria.addPizza(pizza: vegetarian)
pizzeria.addPizza(pizza: meatLovers)

let allPizzas = pizzeria.getAllPizzas()
print(allPizzas) // Выводит все добавленные пиццы