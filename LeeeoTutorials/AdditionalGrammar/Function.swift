//
//  Function.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/04/01.
// https://babbab2.tistory.com/78

import Foundation

/*
 MARK: 1. 함수 vs 메서드
 - func로 생성했다면 모두 "함수" (제일 위가 func)
 - class, struct, enum 내부에 있는 func는 "메서드"라고 불림
 - 함수를 따로 쓸 일은 거의 없지만 더 포괄적인 개념이 메서드 보단 함수임
 
 MARK: 2. 함수 vs 클로져
 - Closure는 2가지로 나뉨(Named Closure, Unnamed Closure)
 - 우리가 흔히 아는 이름이 있는 func는 Named Closure에 속한다. 허나 함수라 부름. 함수, 메서드, 클로저 일 수 도 있다는 의미
 - Unnamed Closure는 이름없는 함수를 부름. 근데 Unnamed를 안부르고 그냥 클로져라고 부르는 것
 
 MARK: 3. 함수 선언 방법
 - func name(ArgumentLabel ParameterName : Type){}으로 선언한다.
 - Ex) func printHello(to name:String){}
 - Argument Label이 함수를 호출할 때 사용이 된다(밖)
 - ParameterName은 함수 내부에서 사용된다 (안)
 - Argument Lable은 Wildcard Pattern(_)을 사용해서 생략이 가능함
 - Ex) func print(_ items : Any..)
 - 근데 굳이 따로 선언안하고 한 번에 선언 할 수 있음
 - Ex) func printHello(name:String) 이면 Argument, Parameter 모두 name인것임
 - ()는 두개 다 없다는 의미
 
 MARK: 4. 리턴 타입
 - func name(ArgumentLabel ParameterName : Type) -> String{}
 - 위의 예시와 같이 -> 를 사용해 return 타입을 String으로 지정해줌
 - 허나 리턴타입이 없다면 그냥 생략해도됨
 
 MARK: 5. 파라미터로 전달되는 Value 타입의 값은 복사된 상수 값이다
 - func printHello(name: String){}
 - var name: String = "Chad"
 - printHello(name: name)
 - 이렇게 하게 된다면 var name 의 값을 Parameter name 값에 복사해서 가져온다.
 - Ex)
 func printHello(name: String) {
     DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
         print("Check #2 \(name)"")
     }
 }
 var name: String = "Chad"
 printHello(name: name)
 name = "Bob"
 print("Check #1 \(name)")
- 위에 DispatchQueue를 사용해서 name값을 바꾼다음 출력해도 이미 복사해놨기에
 Check #1 Bob
 Check #2 Chad 로 출력
 ++
 - 허나 name값은 함수 내에서 변동이 불가함. 이는 상수값으로 지정되기 떄문이다
 - func printHello(name: String){
   name = "Hello"
 } -> ERROR
 

 MARK: 6. 파라미터로 전달되는 Reference 타입의 값은 참조된다
 - Ex)
 func changeName(human: Human) {
 human.name = "GiWook"
}
let chad = Human.init(name: "Chad", age: 20)
changeName(human: chad)
print(chad.name)
 - 여기서 changeName을 해주면 "참조값"을 보기 때문에 chad.name을 하면 GiWook으로 바뀌었다고 생각하면 된다
 
 MARK: 7. In-Out Parameters : Value 타입의 값을 참조로 전달하는 방법 (inout == copy-in-copy-out)
 
 https://babbab2.tistory.com/78 -> 앞에 더 하고 알아보기
 
 
 
 */


