page 1000 "TCNRolCenter"
{
    UsageCategory = Administration;
    PageType = RoleCenter;
    Caption = 'Role Center AddOn ';
    PromotedActionCategoriesml = ESP = 'Administrar,Proceso,Informes,Listas,Tareas,Informes y análisis,Administración,Archivos,Objetos';
    layout
    {
        area(RoleCenter)
        {
            part(Pilas; TCNPilas)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group(Listas)
            {
                action("Action01")
                {
                    Caption = 'Caption01';
                    Image = List;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Category4;
                    ApplicationArea = all;
                    RunObject = Page TCNLista01;
                }
            }
            group(Tareas)
            {
                action(Action02)
                {
                    Caption = 'Caption02';
                    ApplicationArea = All;
                    image = Task;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Category5;
                    RunObject = Page TCNTarea01;
                }
            }
            group("Informes y analisis")
            {
                action(Action03)
                {
                    Caption = 'Caption03';
                    ApplicationArea = All;
                    image = Report;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Category6;
                    RunObject = report TCNReport01;

                }
            }
            group(Administracion)
            {
                action("Action04")

                {
                    Caption = 'Caption04';
                    Image = Administration;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Category7;
                    ApplicationArea = all;
                    RunObject = Page TCNConf01;
                }
            }
            group(Archivos)
            {
                action("Action05")

                {
                    Caption = 'Caption05';
                    Image = Archive;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Category8;
                    ApplicationArea = all;
                    RunObject = Page TCNHco01;
                }
            }
            group(Objetos)
            {
                action(ListaObjetos)
                {
                    Caption = 'Objetos';
                    Image = Table;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Category9;
                    ApplicationArea = all;
                    RunObject = codeunit TCNFunciones;
                }
            }
        }
    }
}
