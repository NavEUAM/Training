codeunit 50102 "CSD SeminarRegPrinted"
//lab 9
{
    TableNo = "CSD Seminar Reg. Header";
    trigger OnRun();
    begin
        find;
        "No. Printed" += 1;
        Modify;
        Commit;
    end;

}