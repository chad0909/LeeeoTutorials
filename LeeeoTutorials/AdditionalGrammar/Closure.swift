//
//  Closure.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/04/02.
//

import Foundation

/*
 MARK: 1. 클로져
 - Closure는 2가지로 나뉨(Named Closure, Unnamed Closure)
 - 우리가 흔히 아는 이름이 있는 func는 Named Closure에 속한다. 허나 함수라 부름. 함수, 메서드, 클로저 일 수 도 있다는 의미
 - Unnamed Closure는 이름없는 함수를 부름. 근데 Unnamed를 안부르고 그냥 클로져라고 부르는 것
 - 클로저는 함수와 같이 1급 객체 함수라 이 특징을 다 가지고 있음
 
 MARK: 2. 클로져 표현
 - 보통 클러져 헤드 + in + 클로져 바디 로 이뤄짐. 그리고 클로져의 특징답게 func가 없음
 - Ex)
 {(Parameter) -> Return Type in
 실행구문
 }
 
 Parameter와 Return Type이 둘 다 없는 클로저
 - Ex)
 let closure = { () -> () in
 print("Closure")
 }
 - 1급 객체이기에 상수에 클로저 대입 가능 <- 뭔소리인지 모르지만 일다 넘어가기
 - 위 예시 같은 경우는 parameter와 return 타입이 없는 경우이다 (두개 다 생략이 가능하지만 저게 기본 틀)
 
 Parameter와 Return Type이 있는 클로저
 - Ex)
 let closure = { (name: String) -> String in
     return "Hello, \(name)"
 }
 - 위에서 봤을 때 함수와 같이 name:String은 parameter이자 argument로 생각할 수 있는데 클로져에서는 오직 parameter name만 가능
 - 클로져는 ArgumentLabel을 사용하지 않기 때문이다
 
 MARK: 3. 1급 객체로서 클로저
 클로저를 변수나 상수에 대입할 수 있다
 - Ex)
 let closure = { () -> () in
     print("Closure")
 }
 let closure2 = closure
 - 이와 같이 변수나 상수에 대입이 가능하다
 
 함수의 파라미터 타입으로 클로저를 전달할 수 있다 (RE)
let closure = { () -> () in
 print("Closure")
}
func doSomething(closure: () -> ()) {
 closure()
}
doSomething(closure: { () -> () in
 print("Hello!")
})
 - 파라미터로 함수를 넘겨줄 수 있지만 클로져 타입으로 넘겨주는 예시
 
 함수의 반환 타입으로 클로저를 사용할 수 있다
 func doSomething() -> () -> () {
     return { () -> () in
         print("Hello Chad!")
     }
 }
 let closure = doSomething()
 closure()
 - 클로져를 리턴하는방법이다 ( ()->() 가 클로져. 즉, doSomething() ->(의 리턴값) ()->(). )
 - doSomething을 변수에 넣어서 실행시키면 Hello Chad! 가 실행 (doSomething()() 와 동일)
 
 MARK: 4. 클로저 실행하기
 1. 클로저가 대입된 변수나 상수로 호출하기
 let closure = { () -> String in
     return "Hello Chad!"
 }
 closure()
 - 이런 식으로 호출구문인 ()를 사용해서 호출할 수 있음
 
 2. 클로저를 직접 실행하기
 ({ () -> () in
     print("Hello Chad!")
 })()
 - func 나 아무것도 없이 저렇게 실행이 가능하다.
 - 허나 이는 완벽히 1회성이다.
 
 MARK: 5. 트레일링 클로저(Trailing Closure)
 1. 파라미터가 1개인 경우
 - 클로져를 좀 더 보기 쉽게 문법을 변형 하는 것
 - 마지막 파라미터가 클로져이면 함수 뒤에 붙이는 문법
 -
 func doSomething(closure: () -> ()) {
     closure()
 }
이거를 호출하려면 밑에
 doSomething(closure: { () -> () in
     print("Hello!")
 })
형식으로 호출해야 했었음. 그리고 이걸 트레일링 클로져로 바꾸면
 doSomething () { () -> () in
     print("Hello!")
 }
 로 변함.
 
 2. 파라미터가 여러 개인 함수
 fetchData(success: { () -> () in
     print("Success!")
 }, fail: { () -> () in
     print("Fail!")
 })
 위와 같이 success와 fail을 구분하는 클로져가 2개일 수도 있다. 이걸 트레일링 클로져로 진행하면
 fetchData(success:  { () -> () in
     print("Success!")
 }) { () -> () in
     print("Fail!")
 }
로 완성이 됨.
 
 MARK: 6. 클로저의 경량 문법
 doSomething(closure: { (a: Int, b: Int, c: Int) -> Int in
     return a + b + c
 })
위에 함수가 긴 형태라면 이를 통해 한 번 경량 문법을 적용해보겠음
 1. 파라미터 형식과 리턴 형식을 생략할 수 있다
 doSomething(closure: { (a, b, c) in
     return a + b + c
 })
 그냥 Int 생략 가능
 
 2. Parameter Name은 Shortand Argument Names으로 대체하고, 이 경우 Parameter Name과 in 키워드를 삭제한다
 - 우선 shortand 는 a,b,c를 $0,$1,$2로 대체하는 것. (파라미터에 순서대로 접근)
 doSomething(closure: {
     return $0 + $1 + $2
 })
 - 위와 같이 $0, $1, $2로 대체하고 in과 Parameter Name삭제
 
 3. 단일 리턴문만 남을 경우, return도 생략한다
 doSomething(closure: {
     return $0 + $1 + $2
 })
 위와 같이 return 문만 있다면
 doSomething(closure: {
     $0 + $1 + $2
 })
 로 생략이 가능
 
 4. 클로저 파라미터가 마지막 파라미터면, 트레일링 클로저로 작성한다
 doSomething() {
      $0 + $1 + $2
 }
- 3번 마지막 구문을 이전에 배운 트레일링 클로저를 사용해서 경량 문법을 사용
 
5. ()에 값이 아무 것도 없다면 생략한다
 doSomething {
      $0 + $1 + $2
 }
4번에서 ()가 아무값이 없어서 저렇게 생략 가능하다
 
 MARK: 7. @autoclosure
 
 MARK: 8. @escaping
 - 여지껏 배운 클로져들은 non-escaping closure들이다
 - @escaping 을 활용한다면
 1. 함수가 끝난 뒤에도 클로저 실행 가능
 2. 중첩 함수 내부에서 매개변수로 받은 클로저를 사용 가능
 3. 변수 상수에 대입 가능
 허나 메모리 문제가 있는데 이는 다음 챕터에서 다룸
 
 MARK: 9. 클로저에서 값을 캡쳐
 func doSomething() {
     var message = "Hi I'm Chad!"
     var num = 10
     let closure = { print(num) }
     print(message)
 }
- 이 함수일 경우 closure안에 있는 num은 클로져가 캡쳐해서 저장함. 허나 message는 closure안에 없으니 안함.
 
 클로저의 값 캡쳐 방식
 func doSomething() {
     var num: Int = 0
     print("num check #1 = \(num)")
     let closure = {
         print("num check #3 = \(num)")
     }
     num = 20
     print("num check #2 = \(num)")
     closure()
 }

 
 
 
 
 */
