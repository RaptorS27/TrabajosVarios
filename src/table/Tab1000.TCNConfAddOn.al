table 1000 "TCNConfAddOn"
{
    fields
    {
        field(1; Id; Code[10])
        {
        }
    }

    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }

    procedure InsertIfNotExists()
    var
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert(true);
        end;
    end;
}