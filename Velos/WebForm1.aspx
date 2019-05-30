<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Velos.WebForm1" %>

<!DOCTYPE html>
<html>
<head>

    <style>
        .nonechecked {    background-color: yellow;   }
        .chkb {            color: black;        }
        #StudyCatHeader {  color: navy;         }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js">
    </script>

    <script>
        jQuery(document).ready(function () {                        

            // test all check boxes in group at page load
            $("#StudyCatHeader").addClass("nonechecked"); // start by adding the yellow class
            for (j = 34; j < 47; j++) {

                if ($('input:checkbox[onClick$="' + j + ')"]:checked').length > 0) {
                    $("#StudyCatHeader").removeClass("nonechecked"); // if at least one if found remove the yellow class
                    break; // no need to test any more!
                };
            }
                        
            // add click event for al lcheckboxes in group
            for (i = 34; i < 47; i++) {
                $('input:checkbox[onClick$="' + i + ')"]').click(function () {

                    // test all check boxes in group at page load
                    $("#StudyCatHeader").addClass("nonechecked"); // start by adding the yellow class
                    for (ii = 34; ii < 47; ii++) {

                        if ($('input:checkbox[onClick$="' + ii + ')"]:checked').length > 0) {
                            $("#StudyCatHeader").removeClass("nonechecked"); // if at least one if found remove the yellow class
                            break; // no need to test any more!
                        };
                    }

                });
            }          
            
        });
    </script>


</head>
<body>



    <p id="StudyCatHeader"><b><u>STUDY CATEGORIZATION*</u></b></p> <p id="checkAll" class="chkb">(Check All that apply)</p>

    <div class="chkb">
        <input id="someid_1" type="checkbox" name="vehicle34" value="Car" onClick="moreStudyDetFunctions.setValue(moreStudyDetFunctions.formObj,12037,34)">>
        I have a car<br>
        <input id="someid_2" type="checkbox" name="vehicle3" value="Boat" onClick="moreStudyDetFunctions.setValue(moreStudyDetFunctions.formObj,12038,40)">>
        I have a boat<br>
        <input id="someid_3" checked type="checkbox" name="vehicle4" value="Boat" onClick="moreStudyDetFunctions.setValue(moreStudyDetFunctions.formObj,12039,46)">>
        I have a bike<br>
    </div>

    <p id="StudyCatHeader2"><b><u>SPONSOR INFORMATION*</u></b></p>


</body>
</html>
