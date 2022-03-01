import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stack_task/pages/second_page/widgets/category_box.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff9F8A8A),
      appBar: AppBar(
        title: const Text(
          'Главная',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
          ),
          const Image(
            fit: BoxFit.fitWidth,
            width: double.infinity,
            image: AssetImage(
              'assets/images/Group 488.png',
            ),
          ),
          Positioned(
            top: 120,
            left: 25,
            height: 105,
            right: 25,
            child: Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 2,
                    blurRadius: 25,
                    offset: Offset(1.0, 1.0))
              ], borderRadius: BorderRadius.circular(16), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset(
                      'assets/images/zippet.png',
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Начните зарабатывать!',
                        style: TextStyle(
                            fontFamily: 'Muller', fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Приобретите тариф Behype-PRO \nи начните свою карьеру!',
                        style: TextStyle(
                          fontFamily: 'Muller',
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            top: 260,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                  topEnd: Radius.circular(20),
                ),
                color: Color(0xffF9F8FF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                        bottom: 20,
                      ),
                      child: Text(
                        'Категории',
                        style: TextStyle(
                            fontFamily: 'Muller',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CategoryBox(
                          image: 'assets/images/adv_image.png',
                          title: 'Реклама',
                          description: '106 кампаний',
                        ),
                        CategoryBox(
                          image: 'assets/images/pr_image.png',
                          title: 'Взаимопиар',
                          description: '56 заявок',
                        ),
                        CategoryBox(
                          image: 'assets/images/barter_image.png',
                          title: 'Бартер',
                          description: '245 заявок',
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Рекламные компании',
                          style: TextStyle(
                              fontFamily: 'Muller',
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Все',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'Muller',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(const Size(15, 15)),
                            fixedSize:
                                MaterialStateProperty.all(const Size(50, 30)),
                            shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(60),
                                ),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xffF90640),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 167,
                          width: 175,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xffDED9FF),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xff6322E0), Color(0xffD96DFF)]),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 110,
                          width: 180,
                          child: Image.asset('assets/images/bottom_box.png'),
                        ),
                        Positioned(
                          bottom: 0,
                          top: 118,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )),
                            height: 57,
                            width: 175,
                            child: const Center(
                              child: Text(
                                'В новом обновлении',
                                style: TextStyle(
                                    fontFamily: 'Muller',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
