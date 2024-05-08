Добрий день, Микита!
Зробив 15 завдання, наче все працює, але виникли деякі запитання)))

 1. На уроці багато разів було вжито фразу “Призначити rootViewController для NavigationController”, але ж це тільки при ініціалізації? А якщо NavigationController вже існує? Чи блоки код 1.1 та 1.2, що нижче можна вважати ідентичними?

      1.1 let welcomeNavigationController = UINavigationController(
             rootViewController: WelcomeViewController()
         )

       1.2 if let navigationController = navigationController {
            navigationController.setViewControllers([MainTabbarViewController()], animated: true)
        }

2.   Друге питання. Скоріше спостереження. Зробив зразок проєкту зі Storyboard для порівняння:

https://github.com/aleksandrmoshorovskyi/HomeWork15/tree/storyboard

Помітив таку особливість. У viewDidLoad() - MainTabbarViewController є посилання на navigationController, той що перший. А коли без storyboard:

https://github.com/aleksandrmoshorovskyi/HomeWork15/tree/homework

То у viewDidLoad() - MainTabbarViewController посилання вже відсутнє. navigationController - nil

Реалізації це не завадило, але цікаво, чому так?

3. Зробив у проектів таку перевірку:

        if view.backgroundColor == .white {
            pushBtn.setTitleColor(.black, for: .normal)
        } else {
            pushBtn.setTitleColor(.white, for: .normal)
        }

У WhiteViewController, BrownViewController,  BlackViewController, бо кнопку не видно було.
Помітив, що StatusBar ідеально підлаштовується під фон, шукаю другий день, як трекнути колір елементів StatusBar, але знайшов тільки 100500 статей, як змінити колір StatusBar, а як підписатися на зміну кольору його елементів?))) Чи може є інший варіант рішення?

4. Між MainTabbarViewController та (WhiteViewController, BrownViewController,  BlackViewController) у NavigationFlow.png - це ж NavigationController-и?)
А у WellcomeViewController на малюнку відсутній NavigationController, але ж він потрібен, правильно?

5. *зробив у проєкті спадкування, просто щоб не дублювати код. Розумію, що не найкращий варіант і реалізація “кривенька”)))

https://github.com/aleksandrmoshorovskyi/HomeWork15/tree/homework
