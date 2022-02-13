#include <iostream>
#include <string>

void Check(std::string vir)
{
    int counter = 0;
    bool verif = true;
    for (int i = 0; i < (int)vir.length(); i++)
    {
        if (vir[i] == ')' && counter == 0)
        {
            verif = false;
            break;
        }
        if (vir[i] == '(')
            counter++;
        else if (vir[i] == ')')
            counter--;
    }

    if (vir == "")
        std::cout << "Выражение пустое";
    else if (counter == 0 && verif == true)
        std::cout << "Правильно";
    else
        std::cout << "Ошибка";
}

int main()
{
    setlocale(LC_ALL, "RU");
    std::string str = "5 - (4 * 2)";
    std::cout << "Тестовая проверка 5 - (4 * 2): \n";
    Check(str);
    std::cout << "\n\nТестовая проверка 5 - (4 * 2(: \n";
    str = "5 - (4 * 2(";
    Check(str);
    std::cout << "\n\nНапечатайте выражение, в котором будет производится проверка на скобки: \n";
    getline(std::cin, str);
    Check(str);
}