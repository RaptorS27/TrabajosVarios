page 50601 "TCNPruebas"
{

    Caption = 'TCNPruebas';
    PageType = List;
    ApplicationArea = all;
    UsageCategory = Administration;

    actions
    {
        area(Creation)
        {
            action(Prueba1)
            {
                ApplicationArea = all;
                Image = AboutNav;
                trigger OnAction()
                var
                    rlAllObjWithCaption: Record AllObjWithCaption;
                    culTCNFunciones: Codeunit TCNFunciones;
                    pglAllObjectswithCaption: Page "All Objects with Caption";
                begin
                    rlAllObjWithCaption.SetRange("Object Type", rlAllObjWithCaption."Object Type"::Report);
                    rlAllObjWithCaption.FindSet();
                    pglAllObjectswithCaption.SetRecord(rlAllObjWithCaption);
                    // if pglAllObjectswithCaption.RunModal() = Action::LookupOK then begin
                    culTCNFunciones.PruebaReportToXmlF(101);
                    // end;
                end;
            }
        }
    }

}
