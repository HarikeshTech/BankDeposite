pageextension 70019 "Bank Deposit CardExt" extends "Bank Deposit"
{
    layout
    {
        addafter(Subform)
        {
            group("Attributes")
            {
                field("Maturity Date"; Rec."Maturity Date")
                {
                    ApplicationArea = All;
                }
                field("Amount Redeemed"; Rec."Amount Redeemed")
                {
                    ApplicationArea = All;
                }
                field("Interest Rate"; Rec."Interest Rate")
                {
                    ApplicationArea = All;
                }
                field("No. of DaysFromDateofDeposite"; Rec."No. of DaysFromDateofDeposite")
                {
                    ApplicationArea = All;
                }
                field("No. of DaysFrom Financeialyear"; Rec."No. of DaysFrom Financeialyear")
                {
                    ApplicationArea = All;
                }
                field("Interest Received"; Rec."Interest Received")
                {
                    ApplicationArea = All;
                }
                field(TDS; Rec.TDS)
                {
                    ApplicationArea = All;
                }
                field("Actual Amount Received"; Rec."Actual Amount Received")
                {
                    ApplicationArea = All;
                }
                field("Month End Date"; Rec."Month End Date")
                {
                    ApplicationArea = All;
                }
                field("No of Days as on"; Rec."No of Days as on")
                {
                    ApplicationArea = all;
                }
                field("Accrued Interest"; Rec."Accrued Interest")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}