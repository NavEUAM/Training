page 50140 "CSD Seminar Manager Activities"
{
    Caption = 'CSD Seminar Manager Activities';
    PageType = CardPart;
    SourceTable = "CSD Seminar Cue";
    Editable = false;

    layout
    {
        area(Content)
        {
            cuegroup(Registrations)
            {
                CAption = 'Registrations';
                field(Planned; Planned)
                {
                }
                field(Registered; Registered)
                {
                }


                actions
                {

                    action(New)
                    {
                        Caption = 'New';
                        RunObject = page "CSD Seminar Registration";
                        RunPageMode = Create;
                    }
                }
            }
            cuegroup("For Posting")
            {
                field(closed; Closed)
                {

                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            Insert;
        end;
    end;

}