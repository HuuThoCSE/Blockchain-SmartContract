// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentStorage {
    // Khai báo một cấu trúc sinh viên để lưu trữ thông tin sinh viên
    struct Student {
        string student_code;
        string student_fullname;
        string university_name;
        string major;  // Thuộc tính mới: ngành học
    }

    // Biến để lưu trữ sinh viên
    Student private student;

    // Hàm để lưu trữ thông tin sinh viên
    function setStudent(
        string memory _student_code, 
        string memory _student_fullname, 
        string memory _university_name,
        string memory _major  // Thêm tham số cho ngành học
    ) public {
        student.student_code = _student_code;
        student.student_fullname = _student_fullname;
        student.university_name = _university_name;
        student.major = _major;  // Lưu ngành học
    }

    // Hàm để lấy thông tin sinh viên
    function getStudent() public view returns (
        string memory, 
        string memory, 
        string memory,
        string memory  // Thêm ngành học vào kết quả trả về
    ) {
        return (
            student.student_code, 
            student.student_fullname, 
            student.university_name,
            student.major  // Trả về ngành học
        );
    }
}
