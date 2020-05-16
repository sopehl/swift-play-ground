struct Grade {
    var point = 0;
    
    var letter = "FF";
}

class Lecture {
    
    var name = "";
    
    var avarageGrade = Grade()
 
    var studentNumber = 0;
    
    init() {
    }
    
    init(name: String, avarageGrade: Grade, studentNumber: Int) {
        self.name = name
        self.avarageGrade = avarageGrade
        self.studentNumber = studentNumber
    }
    
    func toString() -> String {
        return "name: \(self.name) - avarageGrade: \(self.avarageGrade) - studentNumber:\(self.studentNumber)"
    }
}

var grade = Grade()
print("initial grade latter : \(grade.letter)")

var lecture = Lecture()
print("initial avarage latter \(lecture.avarageGrade.letter) and student number \(lecture.studentNumber)")

var mathGrade = Grade(point: 78, letter: "CB")
print("Math grade \(mathGrade.point) / \(mathGrade.letter)")

let chemGradeQ1 = Grade(point: 90, letter: "AA")
// creating new struct with new referance(value type)
var chemGradeQ2 = chemGradeQ1
chemGradeQ2.point = 80
chemGradeQ2.letter = "BB"
print(chemGradeQ1)
print(chemGradeQ2)

var chemLectureQ1 = Lecture(name: "Chemistry", avarageGrade: chemGradeQ1, studentNumber: 20)
print("Before - \(chemLectureQ1.toString())")
// refering the same object(referance type)
var chemLectureQ2 = chemLectureQ1
chemLectureQ2.studentNumber = 15
chemLectureQ2.name = "Chem101"

print("After - \(chemLectureQ1.toString())")
print("After - \(chemLectureQ2.toString())")

// Same for the enum
enum Lang {
    case java
    
    case swift
}

var a = Lang.java
print(a)

var b = a
a = Lang.swift
print(a)
print(b)
