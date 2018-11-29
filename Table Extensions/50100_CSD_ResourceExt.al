tableextension 50100 Resource_Extension extends Resource
// CSD1.00 - 2018-11-29
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        modify(Type)

        {
            OptionCaption = 'Instructor,Room';
        }
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximun Participants';
        }
        field(50103; "CSD Quantity Per Day"; Decimal)

        {
            Caption = 'Quantity Per Day';
        }
    }

    var
        myInt: Integer;
}