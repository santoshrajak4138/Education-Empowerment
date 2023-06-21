import UIKit

//MARK: - Enums
enum EducationLevel: String {
    case primary
    case secondary
    case tertiary
}

//MARK: - Structs
struct Student {
    var id: Int
    var firstName: String
    var lastName: String
    var educationLevel: EducationLevel
    var enrolled: Bool
}

//MARK: - Classes
class EducationProgram {
    var programName: String
    var programDescription: String
    var students: [Student] = []

    init(programName: String, programDescription: String) {
        self.programName = programName
        self.programDescription = programDescription
    }
    
    func enroll(student: Student) {
        student.enrolled = true
        students.append(student)
        print("\(student.firstName) has been successfully enrolled in the \(programName) program")
    }
    
    func updateStudentWithEducationLevel(student: Student, educationLevel: EducationLevel) {
        student.educationLevel = educationLevel
        print("\(student.firstName)'s education level has been updated to \(educationLevel.rawValue)")
    }
    
    func printProgramsEnrollment() {
        print("The \(programName) program currently has \(students.count) enrolled students")
    }
}

//MARK: - Protocols
protocol EducationEmpowerment {
    // A function that will print the education level of each enrolled student in a specific program
    func printEducationLevelsForEnrolledStudents(program: EducationProgram)
}

extension EducationEmpowerment {
    func printEducationLevelsForEnrolledStudents(program: EducationProgram) {
        for student in program.students {
            if student.enrolled {
                print("\(student.firstName) is enrolled in the \(program.programName) program at the \(student.educationLevel.rawValue) level")
            }
        }
    }
}

//MARK: - Objects
let student1 = Student(id: 1, firstName: "John", lastName: "Smith", educationLevel: EducationLevel.primary, enrolled: false)
let student2 = Student(id: 2, firstName: "Jane", lastName: "Doe", educationLevel: EducationLevel.primary, enrolled: false)
let student3 = Student(id: 3, firstName: "Jack", lastName: "Johnson", educationLevel: EducationLevel.primary, enrolled: false)

let educationProgram = EducationProgram(programName: "Computer Science", programDescription: "A program for beginners to learn computer programming")
educationProgram.enroll(student: student1)
educationProgram.enroll(student: student2)
educationProgram.enroll(student: student3)
educationProgram.updateStudentWithEducationLevel(student: student2, educationLevel: EducationLevel.secondary)
educationProgram.printProgramsEnrollment()

let educationEmpowerment = EducationEmpowerment.self
educationEmpowerment.printEducationLevelsForEnrolledStudents(program: educationProgram)