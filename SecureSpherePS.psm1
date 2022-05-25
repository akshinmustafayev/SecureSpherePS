# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
#   Plugin Author: Akshin Mustafayev
#  
#   Note: This Plugin is not official Imperva PowerShell plugin.
#   All commands have been created accourding to official API manual.
#   https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61935.htm
#   
#   Please be careful when using cmdltes from this plugin. I am not reponsible
#   for mistakes and damage caused by your actions to your SecureSphere instance.
#   Test your code in the test environment first. 
#   
#   .:::                                                                                        
#   7@@&.                                                                                       
#                                                                                         
#   ^J??.  7JJ??YYYJ~~JYYYJ~   :JJJ7JYYY?~.    .~?YYYY?^    ?JJ7?Y5  JJ?.   .?JJ  7JYYYY?!.         
#   ~PP5.  JPP5?!?5PP5?!?5PP!  :PPPY7!7YPPY:  :YP57  ?PP?  .5PP5J7?  JPP?   ?PP7       JPPY:        
#   ~P55.  JPP?   JPP?   JPP?  :55P:    JPPJ  JP5Y    5PP:  Y5P!     .YPP~ !PP?  .~7??7755P~        
#   ~P55.  JPP7   JPP?   ?PP?  :55P:    JPPJ  JPPJ4tt6^^~.  Y5P!      :5P5!5PY. ^5P5!  ?55P~        
#   ~PP5.  JPP?   JPP?   ?PP?  :555Y7!7YPPY:  :YP5         .5PP!       ~5PPP5:  ~PPY   7PPP~        
#   ^JJJ.  7JJ!   7JJ!   7JJ!  :555?JYYY?~.    .~?YYYYY?:   ?JJ~        !JJJ^    ^7JYYJ???J        
#                              :55P:        
#                              :555:         
#                               ...  
#                                                                                               
# 

# Global Configuration
$SecureSpherePSVersion = "1.0.0"

# Global variables
$SecureSphereHost = ""
$SecureSphereDocumentationPath = "$PSScriptRoot\Documentation\"
$SecureSphereSession = $null

# Loading Private Parts
$PartsPrivate = Get-ChildItem -Path "$PSScriptRoot\Private\" -Filter "*.ps1" -Recurse -ErrorAction SilentlyContinue | Sort-Object FullName
foreach ($PartPrivate in $PartsPrivate) {
    . $PartPrivate.FullName
}

# Loading Public Parts
$PartsPublic = Get-ChildItem -Path "$PSScriptRoot\Public\" -Filter "*.ps1" -Recurse -ErrorAction SilentlyContinue | Sort-Object FullName
foreach ($PartPublic in $PartsPublic) {
    . $PartPublic.FullName
}

# Init startup tasks
Invoke-Initialization
