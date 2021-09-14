page 50303 "TCNTablasRelacionadas"
{

    ApplicationArea = All;
    Caption = 'Tablas Relacionadas';
    PageType = List;
    SourceTable = "Table Relations Metadata";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            field(NumTabla; xNumTabla)
            {
                ApplicationArea = All;
                Caption = 'Nº de tabla';
            }
            repeater(General)
            {
                field("Table ID"; Rec."Table ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Table ID field';
                }
                field("Field No."; Rec."Field No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Field No. field';
                }
                field("Relation No."; Rec."Relation No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relation No. field';
                }
                field("Condition No."; Rec."Condition No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Condition No. field';
                }
                field("Related Table ID"; Rec."Related Table ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Related Table ID field';
                }
                field("Related Field No."; Rec."Related Field No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Related Field No. field';
                }
                field("Condition Type"; Rec."Condition Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Condition Type field';
                }
                field("Condition Field No."; Rec."Condition Field No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Condition Field No. field';
                }
                field("Condition Value"; Rec."Condition Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Condition Value field';
                }
                field("Test Table Relation"; Rec."Test Table Relation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Test Table Relation field';
                }
                field("Validate Table Relation"; Rec."Validate Table Relation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Validate Table Relation field';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ExtraerTablasRelacionadas)
            {
                ApplicationArea = All;
                Caption = 'Extraer tablas relacionadas';
                Image = Table;
                trigger OnAction()
                var
                    TempLInteger: Record Integer temporary;
                    culTCNFunciones: Codeunit TCNFunciones;
                begin
                    culTCNFunciones.ExtraerTablasRelacionadasF(xNumTabla, Confirm('¿Profundizar?', false), TempLInteger, 0);
                    if TempLInteger.FindSet(false) then begin
                        repeat
                            Message(Format(TempLInteger.Number));
                        until TempLInteger.Next() = 0;
                    end;
                end;
            }
        }
    }

    var
        xNumTabla: Integer;
}
