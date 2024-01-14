# Création des issues pour tous les membres 
$lab_web_path = "E:/solicoders/coding-labs-web"
$labs_web = "lab-github","lab-laravel-dusk","lab-starter","lab-crud-laravel-basic","lab-crud-laravel-standard","lab-markdown,lab-scrum"
$membres = "AdnanBennasare","ADNANLH","aminaassaid1","boukharSoufiane1998","grain03","hamidAchaou","husseinbouik","imranesarsri","Jalil-Betroji","LamchatabAmine","Safaa1faiz","Yasmine-daifane","zaani12"

foreach($lab_web in $labs_web){
    foreach($membre in $membres){
       
        $issue_file_name = "$lab_web_path/backlog/$membre" + "_" + "$lab_web.md"
        if(-not(Test-Path($issue_file_name))){
            new-item $issue_file_name
        }
        
        Set-Content $issue_file_name "# $lab_web"
    }
}