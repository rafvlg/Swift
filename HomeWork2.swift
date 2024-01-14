//Написать функцию, которая на вход принимает число:
//сумма, которую пользователь хочет положить на вклад,
//следующий аргумент это годовой процент, третий аргумент
//это срок Функция возвращает сколько денег получит
//пользователь по итогу.

func calculateDeposit(totalAmount: Double, interestRate: Double, duration: Int) -> Double {
    let interest = (interestRate / 100) * Double(duration)
    let amountWithInterest = totalAmount + (totalAmount * interest)
    return amountWithInterest
}

//Создать перечисление, которое содержит 3 вида пиццы
//и создать переменные с каждым видом пиццы.

enum Pizza {
    case margherita
    case pepperoni
    case hawaiian
}

var margheritaPizza = Pizza.margherita
var pepperoniPizza = Pizza.pepperoni
var hawaiianPizza = Pizza.hawaiian

//Добавить возможность получения названия пиццы через rawValue

enum Pizza: String {
    case margherita = "Margherita"
    case pepperoni = "Pepperoni"
    case hawaiian = "Hawaiian"
}

var margheritaPizza = Pizza.margherita.rawValue
var pepperoniPizza = Pizza.pepperoni.rawValue
var hawaiianPizza = Pizza.hawaiian.rawValue