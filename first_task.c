#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <stdio.h>
 #include <curses.h>
#include <string.h>
#include <regex>
using namespace std;
int main()
{
    regex regularType("[A-Za-z0-9]+[:]array([[][0-9]+[.]{3}[0-9]+(]))*(of)(?:integer|real|string|char)");
    regex variableWithIndex("[A-Za-z0-9]+([[0-9]+(]))+");
    char inputString[100] = " ";
    cin >> inputString;
    if (regex_match(inputString, regularType)){
        cout << "it's regular type!'" << endl;
    }   
    else {
        if (regex_match(inputString, variableWithIndex)){
            cout << "It's variable with index" << endl;
        }
        else cout << "I dont know :c" << endl;
    }
    return 0;
}