page 50302 "TCNPilas"
{
    Caption = 'Pendiente definir';
    PageType = CardPart;
    ShowFilter = false;
    RefreshOnActivate = true;
    layout
    {
        area(content)
        {
            cuegroup(Grupo01)
            {
                Caption = '';
                visible = true;
                field(IncidenciasInterna; DatosPilasF(1, false))
                {
                    ApplicationArea = All;
                    Caption = 'Pendiente definir';
                    trigger OnDrillDown()
                    begin
                        DatosPilasF(1, true);
                    end;
                }

                actions
                {
                    // action(Accion)
                    // {
                    //     ApplicationArea = All;
                    //     Caption = 'Pendiente definir';
                    //     RunObject = Page TCNPagina;
                    //     RunPageMode = View;
                    // }
                }
            }
        }
    }
    local procedure DatosPilasF(pNumPila: Integer; pDrillDown: Boolean) xSalida: Integer
    begin
    end;
}