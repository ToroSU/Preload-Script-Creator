<# 
.NAME
    Untitled
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(500,400)
$Form.text                       = "Image Batch Creator"
$Form.TopMost                    = $false

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "File Name:"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 20
$Label1.location                 = New-Object System.Drawing.Point(20,20)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 275
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(100,15)
$TextBox1.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "HDI:"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 20
$Label2.location                 = New-Object System.Drawing.Point(20,50)
$Label2.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBox_HDI                     = New-Object system.Windows.Forms.TextBox
$TextBox_HDI.multiline           = $false
$TextBox_HDI.width               = 320
$TextBox_HDI.height              = 20
$TextBox_HDI.location            = New-Object System.Drawing.Point(100,45)
$TextBox_HDI.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label3                          = New-Object system.Windows.Forms.Label
$Label3.text                     = "DriverCD:"
$Label3.AutoSize                 = $true
$Label3.width                    = 25
$Label3.height                   = 20
$Label3.location                 = New-Object System.Drawing.Point(20,80)
$Label3.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBox_DCD                     = New-Object system.Windows.Forms.TextBox
$TextBox_DCD.multiline           = $false
$TextBox_DCD.width               = 320
$TextBox_DCD.height              = 20
$TextBox_DCD.location            = New-Object System.Drawing.Point(100,75)
$TextBox_DCD.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label4                          = New-Object system.Windows.Forms.Label
$Label4.text                     = "ASKIT:"
$Label4.AutoSize                 = $true
$Label4.width                    = 25
$Label4.height                   = 20
$Label4.location                 = New-Object System.Drawing.Point(20,140)
$Label4.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label5                          = New-Object system.Windows.Forms.Label
$Label5.text                     = "ASEDN:"
$Label5.AutoSize                 = $true
$Label5.width                    = 25
$Label5.height                   = 20
$Label5.location                 = New-Object System.Drawing.Point(20,170)
$Label5.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "RAID:"
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 20
$Label6.location                 = New-Object System.Drawing.Point(20,200)
$Label6.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label7                          = New-Object system.Windows.Forms.Label
$Label7.text                     = "Component:"
$Label7.AutoSize                 = $true
$Label7.width                    = 25
$Label7.height                   = 10
$Label7.location                 = New-Object System.Drawing.Point(20,230)
$Label7.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBox_OFS                     = New-Object system.Windows.Forms.TextBox
$TextBox_OFS.multiline           = $false
$TextBox_OFS.width               = 320
$TextBox_OFS.height              = 20
$TextBox_OFS.location            = New-Object System.Drawing.Point(100,105)
$TextBox_OFS.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBox_ASKIT                   = New-Object system.Windows.Forms.TextBox
$TextBox_ASKIT.multiline         = $false
$TextBox_ASKIT.width             = 320
$TextBox_ASKIT.height            = 20
$TextBox_ASKIT.location          = New-Object System.Drawing.Point(100,135)
$TextBox_ASKIT.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBox_ASEDN                   = New-Object system.Windows.Forms.TextBox
$TextBox_ASEDN.multiline         = $false
$TextBox_ASEDN.width             = 320
$TextBox_ASEDN.height            = 20
$TextBox_ASEDN.location          = New-Object System.Drawing.Point(100,165)
$TextBox_ASEDN.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$HDI_button                      = New-Object system.Windows.Forms.Button
$HDI_button.text                 = "..."
$HDI_button.width                = 30
$HDI_button.height               = 20
$HDI_button.location             = New-Object System.Drawing.Point(430,45)
$HDI_button.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$DCD_button                      = New-Object system.Windows.Forms.Button
$DCD_button.text                 = "..."
$DCD_button.width                = 30
$DCD_button.height               = 20
$DCD_button.location             = New-Object System.Drawing.Point(430,75)
$DCD_button.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ASKIT_button                    = New-Object system.Windows.Forms.Button
$ASKIT_button.text               = "..."
$ASKIT_button.width              = 30
$ASKIT_button.height             = 20
$ASKIT_button.location           = New-Object System.Drawing.Point(430,135)
$ASKIT_button.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ASEDN_button                    = New-Object system.Windows.Forms.Button
$ASEDN_button.text               = "..."
$ASEDN_button.width              = 30
$ASEDN_button.height             = 20
$ASEDN_button.location           = New-Object System.Drawing.Point(430,165)
$ASEDN_button.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$RAID_button                     = New-Object system.Windows.Forms.Button
$RAID_button.text                = "..."
$RAID_button.width               = 30
$RAID_button.height              = 20
$RAID_button.location            = New-Object System.Drawing.Point(430,195)
$RAID_button.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Other_button                    = New-Object system.Windows.Forms.Button
$Other_button.text               = "..."
$Other_button.width              = 30
$Other_button.height             = 20
$Other_button.location           = New-Object System.Drawing.Point(430,225)
$Other_button.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label8                          = New-Object system.Windows.Forms.Label
$Label8.text                     = "Office:"
$Label8.AutoSize                 = $true
$Label8.width                    = 25
$Label8.height                   = 20
$Label8.location                 = New-Object System.Drawing.Point(20,110)
$Label8.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBox_RAID                    = New-Object system.Windows.Forms.TextBox
$TextBox_RAID.multiline          = $false
$TextBox_RAID.width              = 320
$TextBox_RAID.height             = 20
$TextBox_RAID.location           = New-Object System.Drawing.Point(100,195)
$TextBox_RAID.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$OFS_button                      = New-Object system.Windows.Forms.Button
$OFS_button.text                 = "..."
$OFS_button.width                = 30
$OFS_button.height               = 20
$OFS_button.location             = New-Object System.Drawing.Point(430,105)
$OFS_button.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$OA3_bypass_ckbox                = New-Object system.Windows.Forms.CheckBox
$OA3_bypass_ckbox.text           = "Bypass OA3"
$OA3_bypass_ckbox.AutoSize       = $false
$OA3_bypass_ckbox.width          = 100
$OA3_bypass_ckbox.height         = 20
$OA3_bypass_ckbox.location       = New-Object System.Drawing.Point(20,330)
$OA3_bypass_ckbox.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$PR_ckbox                        = New-Object system.Windows.Forms.CheckBox
$PR_ckbox.text                   = "PR"
$PR_ckbox.AutoSize               = $false
$PR_ckbox.width                  = 100
$PR_ckbox.height                 = 20
$PR_ckbox.location               = New-Object System.Drawing.Point(20,360)
$PR_ckbox.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$creatBat_button                 = New-Object system.Windows.Forms.Button
$creatBat_button.text            = "Create .Bat File"
$creatBat_button.width           = 150
$creatBat_button.height          = 50
$creatBat_button.location        = New-Object System.Drawing.Point(311,324)
$creatBat_button.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',11)

$ListBox_Other                   = New-Object system.Windows.Forms.ListBox
$ListBox_Other.text              = "listBox"
$ListBox_Other.width             = 320
$ListBox_Other.height            = 80
$ListBox_Other.location          = New-Object System.Drawing.Point(101,225)

$Name_button                     = New-Object system.Windows.Forms.Button
$Name_button.text                = "Default"
$Name_button.width               = 50
$Name_button.height              = 20
$Name_button.location            = New-Object System.Drawing.Point(410,15)
$Name_button.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$preload_button                  = New-Object system.Windows.Forms.Button
$preload_button.text             = "Preload directly"
$preload_button.width            = 150
$preload_button.height           = 50
$preload_button.location         = New-Object System.Drawing.Point(145,324)
$preload_button.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',11)

$Label9                          = New-Object system.Windows.Forms.Label
$Label9.text                     = ".bat"
$Label9.AutoSize                 = $true
$Label9.width                    = 25
$Label9.height                   = 20
$Label9.location                 = New-Object System.Drawing.Point(377,22)
$Label9.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Form.controls.AddRange(@($Label1,$TextBox1,$Label2,$TextBox_HDI,$Label3,$TextBox_DCD,$Label4,$Label5,$Label6,$Label7,$TextBox_OFS,$TextBox_ASKIT,$TextBox_ASEDN,$HDI_button,$DCD_button,$ASKIT_button,$ASEDN_button,$RAID_button,$Other_button,$Label8,$TextBox_RAID,$OFS_button,$OA3_bypass_ckbox,$PR_ckbox,$creatBat_button,$ListBox_Other,$Name_button,$preload_button,$Label9))



function ShowNotificationForm { # 由於直接使用 [System.Windows.Forms.MessageBox]::Show 會有預期外的引用錯誤，所以先直接創建視窗來替代
    param (
        [string]$message
    )

    # 創建新的窗口
    $notificationForm = New-Object System.Windows.Forms.Form
    $notificationForm.Text = 'Complete'
    $notificationForm.Size = New-Object System.Drawing.Size(400,150)
    $notificationForm.StartPosition = 'CenterScreen'

    # 添加 Label 來顯示通知消息
    $notificationLabel = New-Object System.Windows.Forms.Label
    $notificationLabel.Location = New-Object System.Drawing.Point(10,20)
    $notificationLabel.Size = New-Object System.Drawing.Size(370,60)
    $notificationLabel.Text = $message
    $notificationForm.Controls.Add($notificationLabel)

    # 添加 OK 按鈕
    $okButton = New-Object System.Windows.Forms.Button
    $okButton.Location = New-Object System.Drawing.Point(150,80)
    $okButton.Size = New-Object System.Drawing.Size(75,30)
    $okButton.Text = 'OK'
    $okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $notificationForm.Controls.Add($okButton)

    $notificationForm.AcceptButton = $okButton

    # 顯示窗口
    $notificationForm.ShowDialog()
}




#region Logic 

# Located the 'Asus_image' folder and set its drive as the default
$folderName = "Asus_image"
$foundDrive = $null


Write-Host "Searching $folderName ..."
# detect all drive
foreach ($drive in 'C:', 'D:', 'E:', 'F:', 'G:', 'H:', 'I:') {
    if (Test-Path -Path "$drive\$folderName") {
        $foundDrive = $drive
        break
    }
}

if ($foundDrive) {
    Write-Host "The $folderName folder is on drive: $foundDrive"
} else {
    Write-Host "Folder $folderName not found on any drive."
    $foundDrive = 'C:'
}


# button action
# for HDI_button
$HDI_button.Add_Click({

    $defaultPath = "$script:foundDrive\Asus_image\HDI\"
    $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog

    # Check if the path exists
    if (Test-Path $defaultPath) {
        $FolderBrowser.SelectedPath = $defaultPath
    }

    if ($FolderBrowser.ShowDialog() -eq 'OK') {
        $selectedPath = $FolderBrowser.SelectedPath
        $TextBox_HDI.Text = $selectedPath  # Display the selected path in TextBox2
    }
})

# for DCD_button
$DCD_button.Add_Click({

    $defaultPath = "$script:foundDrive\Asus_image\DriverCD\"
    $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog

    # Check if the path exists
    if (Test-Path $defaultPath) {
        $FolderBrowser.SelectedPath = $defaultPath
    }

    if ($FolderBrowser.ShowDialog() -eq 'OK') {
        $selectedPath = $FolderBrowser.SelectedPath
        $TextBox_DCD.Text = $selectedPath  
    }
})

# for ASKIT_button
$ASKIT_button.Add_Click({

    $defaultPath = "$script:foundDrive\Asus_image\ASKIT\"
    $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog

    # Check if the path exists
    if (Test-Path $defaultPath) {
        $FolderBrowser.SelectedPath = $defaultPath
    }

    if ($FolderBrowser.ShowDialog() -eq 'OK') {
        $selectedPath = $FolderBrowser.SelectedPath
        $TextBox_ASKIT.Text = $selectedPath  # Display the selected path in TextBox2
    }
})

# for ASEDN_button
$ASEDN_button.Add_Click({

    $defaultPath = "$script:foundDrive\Asus_image\ASEDN\"
    $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog

    # Check if the path exists
    if (Test-Path $defaultPath) {
        $FolderBrowser.SelectedPath = $defaultPath
    }

    if ($FolderBrowser.ShowDialog() -eq 'OK') {
        $selectedPath = $FolderBrowser.SelectedPath
        $TextBox_ASEDN.Text = $selectedPath  # Display the selected path in TextBox2
    }
})

# for RAID_button
$RAID_button.Add_Click({

    $defaultPath = "$script:foundDrive\Asus_image\RAID\"
    $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog

    # Check if the path exists
    if (Test-Path $defaultPath) {
        $FolderBrowser.SelectedPath = $defaultPath
    }

    if ($FolderBrowser.ShowDialog() -eq 'OK') {
        $selectedPath = $FolderBrowser.SelectedPath
        $TextBox_RAID.Text = $selectedPath  # Display the selected path in TextBox2
    }
})

# for OFS_button
$OFS_button.Add_Click({

    $defaultPath = "$script:foundDrive\Asus_image\Office\"
    $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog

    # Check if the path exists
    if (Test-Path $defaultPath) {
        $FolderBrowser.SelectedPath = $defaultPath
    }

    if ($FolderBrowser.ShowDialog() -eq 'OK') {
        $selectedPath = $FolderBrowser.SelectedPath
        $TextBox_OFS.Text = $selectedPath  # Display the selected path in TextBox2
    }
})

# for Other_button
$Other_button.Add_Click({

    $defaultPath = "$script:foundDrive\Asus_image\Other\"
    $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog

    # Check if the path exists
    if (Test-Path $defaultPath) {
        $FolderBrowser.SelectedPath = $defaultPath
    }

    if ($FolderBrowser.ShowDialog() -eq 'OK') {
        $selectedPath = $FolderBrowser.SelectedPath
        
        # Add the selected path to the ListBox
        $ListBox_Other.Items.Add($selectedPath)
    }
})


# 在listbox_other中加入右鍵功能 用以刪除誤填的路徑
# Create a context menu for the ListBox 
$ContextMenu = New-Object System.Windows.Forms.ContextMenuStrip

# Add a 'Delete' menu item
$DeleteMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
$DeleteMenuItem.Text = "Delete"
$DeleteMenuItem.Add_Click({
    # Check if an item is selected in the ListBox
    if ($ListBox_Other.SelectedIndex -ge 0) {
        # Remove the selected item from the ListBox
        $ListBox_Other.Items.RemoveAt($ListBox_Other.SelectedIndex)
    }
})

$ContextMenu.Items.Add($DeleteMenuItem) > $null # > null 用於避免輸出"0" (由於對powershell的操作不熟悉，我添加的項目的位置（索引）被返回並顯示為 0，因此定向一個$null 讓其輸出以避免顯示在command line)

# Assign the context menu to the ListBox
$ListBox_Other.ContextMenuStrip = $ContextMenu


#for batName
#for batName_button
$Name_button.Add_Click({
    $defaultBatName = "Project_Win11_MayCI_v1.00_Raid0"
    $Textbox1.Text = $defaultBatName
    
    $global:batName_string = "$($Textbox1.Text).bat"
})



# 當使用者點擊 defaultName button
$Name_button.Add_Click({
    $defaultBatName = "Project_Win11_MayCI_v1.00_Raid0"
    $Textbox1.Text = $defaultBatName
})


$creatBat_button.Add_Click({
    # 從 TextBox 獲取使用者輸入的 batname
    $batNameFromUser = $Textbox1.Text

    # 判斷是否為空
    if (-not $batNameFromUser -or $batNameFromUser -eq "") {
        # 創建新的窗口
        $inputForm = New-Object System.Windows.Forms.Form
        $inputForm.Text = '輸入 Batname'
        $inputForm.Size = New-Object System.Drawing.Size(300,150)
        $inputForm.StartPosition = 'CenterScreen'

        # 添加 Label
        $inputLabel = New-Object System.Windows.Forms.Label
        $inputLabel.Location = New-Object System.Drawing.Point(10,20)
        $inputLabel.Size = New-Object System.Drawing.Size(280,20)
        $inputLabel.Text = '請輸入 Batname:'
        $inputForm.Controls.Add($inputLabel)

        # 添加 TextBox
        $textBox = New-Object System.Windows.Forms.TextBox
        $textBox.Location = New-Object System.Drawing.Point(10,40)
        $textBox.Size = New-Object System.Drawing.Size(260,20)
        $inputForm.Controls.Add($textBox)

        # 添加 OK 按鈕
        $okButton = New-Object System.Windows.Forms.Button
        $okButton.Location = New-Object System.Drawing.Point(190,70)
        $okButton.Size = New-Object System.Drawing.Size(75,30)
        $okButton.Text = 'OK'
        $okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
        $inputForm.Controls.Add($okButton)

        $inputForm.AcceptButton = $okButton

        # 顯示窗口
        $result = $inputForm.ShowDialog()

        if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
            $batNameFromUser = $textBox.Text
        }
    }
    
    # 決定最後的 batname
    if (-not $batNameFromUser -or $batNameFromUser -eq "") {
        $global:batName_string = "unName.bat"
    } else {
        $global:batName_string = "$batNameFromUser.bat"
    }
    
    # 若 $batName_string 不為空，則繼續原本的程式碼...
    # Initialize the command string with the base command
    $commandString = "X:\Tools\AsDiskLayout.exe" # The 'commandString' is used for Step A in the original batch content
    $commandString_stepB = "" # The 'commandString_stepB' is used for Step B in the original batch content

    # Check for the /PR parameter based on the CheckBox
    if ($PR_ckbox.Checked) {
        $commandString += " /PR"
    }

    # Check for the /BypassCheckOA3 parameter based on its CheckBox
        if ($OA3_bypass_ckbox.Checked) {
        $commandString += " /BypassCheckOA3"
    }

    $commandString += " ^"


    # Now add paths based on text box values:

    # HDI
    if (-not [string]::IsNullOrWhiteSpace($TextBox_HDI.Text)) {
        $path = $TextBox_HDI.Text.Split(":")[1] # Split on ':' and take the right side to exclude the drive letter
        $commandString += "`n/HDI:%IMAGEDRIVE%:$path ^"
        $commandString_stepB += "`n@echo Copy HDI"
        $commandString_stepB += "`nCopy %IMAGEDRIVE%:$path\*.swm H:`n"
    }

    # Office
    if (-not [string]::IsNullOrWhiteSpace($TextBox_OFS.Text)) {
        $path = $TextBox_OFS.Text.Split(":")[1]
        $commandString += "`n/Office:%IMAGEDRIVE%:$path ^"
        $commandString_stepB += "`n@echo Copy Office"
        $commandString_stepB += "`nCopy %IMAGEDRIVE%:$path\*.wim O:`n"
    }

    # ASEDN
    if (-not [string]::IsNullOrWhiteSpace($TextBox_ASEDN.Text)) {
        $path = $TextBox_ASEDN.Text.Split(":")[1]
        $commandString += "`n/Component:%IMAGEDRIVE%:$path ^"
        $commandString_stepB += "`n@echo Copy ASEDN"
        $commandString_stepB += "`nCopy %IMAGEDRIVE%:$path\*.wim C:`n"
    }

    # ASKIT
    if (-not [string]::IsNullOrWhiteSpace($TextBox_ASKIT.Text)) {
        $path = $TextBox_ASKIT.Text.Split(":")[1]
        $commandString += "`n/Component:%IMAGEDRIVE%:$path ^"
        $commandString_stepB += "`n@echo Copy ASKIT"
        $commandString_stepB += "`nCopy %IMAGEDRIVE%:$path\*.wim C:`n"
    }

    # DriverCD
    if (-not [string]::IsNullOrWhiteSpace($TextBox_DCD.Text)) {
        $path = $TextBox_DCD.Text.Split(":")[1]
        $commandString += "`n/Component:%IMAGEDRIVE%:$path ^"
        $commandString_stepB += "`n@echo Copy DriverCD"
        $commandString_stepB += "`nCopy %IMAGEDRIVE%:$path\*.wim C:`n"
    }

    # Raid
    if (-not [string]::IsNullOrWhiteSpace($TextBox_RAID.Text)) {
        $path = $TextBox_RAID.Text.Split(":")[1]
        $commandString += "`n/Component:%IMAGEDRIVE%:$path ^"
        $commandString_stepB += "`n@echo Copy RAID"
        $commandString_stepB += "`nCopy %IMAGEDRIVE%:$path\*.wim C:`n"
    }

    # Other Listbox 可能有複數項目需迴圈處理
    $other_index = 0
    foreach ($item in $ListBox_Other.Items) {
        if (-not [string]::IsNullOrWhiteSpace($item)) {
            $path = $item.Split(":")[1]
            $commandString += "`n/Component:%IMAGEDRIVE%:$path ^"
            if ($other_index -lt 1){ # 此字串出現一次即可，因此僅在第一次回圈加入
                $commandString_stepB += "`n@echo Copy other component"
                }
            $commandString_stepB += "`nCopy %IMAGEDRIVE%:$path\*.wim C:"
            $other_index = $other_index + 1
        }
    }

    # CommandString 刪除最後的 ^
    if ($commandString.EndsWith(" ^")) { # 檢查最後是否為 ^
        $commandString = $commandString.Substring(0, $commandString.Length - 2) # 將 commandString 設為原始字符串的子字符串，開始於索引 0 並終止於原始字符串的長度減去 2。會刪除最後兩個字元
    }
    
    # CommandString_stepB 刪除開頭的`n
    if ($commandString_stepB.StartsWith("`n")) { # 檢查開頭是否為 `n
        $commandString_stepB = $commandString_stepB.Substring(2) # 省略第二個參數將會從索引 2 開始一直取到字符串的結尾
    }

    
    # 原始 Bat 文本，利用 {{COMMAND_STRING}} 預備替換空間，並在建檔前替換

$batContent = @"
@echo off

@echo Find a drive that has a folder titled Images.
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do @if exist %%a:\Asus_image\ set IMAGEDRIVE=%%a
echo The Images folder is on drive: %IMAGEDRIVE%
set IMAGEDRIVE_=%IMAGEDRIVE%

@echo Asus Step 1

{{COMMAND_STRING}}


@echo Asus Step 2 --- Copy Files
@for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do @if exist %%a:\Asus_image\ set IMAGEDRIVE=%%a
@echo The Images folder is on drive: %IMAGEDRIVE%

rem if %IMAGEDRIVE% NEQ %IMAGEDRIVE_% (goto A) else (goto B)

rem :A
rem @echo Navigate to Drive: %IMAGEDRIVE%
rem goto B

rem :B
rem -----------------------------------------------------------------------------------
{{COMMAND_STRING_stepB}}

rem -----------------------------------------------------------------------------------


@echo Copy Done.
@echo ----------------------------------------------------------------------------------
@echo Case:A -- Unplug your USB device and type "exit" to preload immediately.
@echo Case:B -- Shutdown and manually reboot later (System will preload after reboot).
@echo ----------------------------------------------------------------------------------

set /p "input=Case:"

if "%input%" EQU "A" (goto CA)
if "%input%" EQU "B" (goto CB)
if "%input%" EQU "b" (goto CB)


:CA
echo Case:A
call :timeout 2
:loop
echo Unplug USB device, and type "exit".
call :timeout 2
@for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do @if exist %%a:\Asus_image\ (goto loop)
goto :EOF

:CB
echo Case:B
echo System will shutdown.
call :timeout 2
wpeutil shutdown 
goto :EOF


@goto :eof
:timeout
:: use ping to delay for the number of seconds passed as an argument

@ping -n %1 127.0.0.1 > nul
@ping -n 2 127.0.0.1 > nul
@goto :eof


"@

    $batContent = $batContent.Replace('{{COMMAND_STRING}}', $commandString)
    $batContent = $batContent.Replace('{{COMMAND_STRING_stepB}}', $commandString_stepB)

    # Save the content to a bat file
    $batContent | Out-File -Encoding ASCII -FilePath $global:batName_string

     # 顯示文件已被創建的通知
    $notificationMessage = "Batch file $($global:batName_string) has been created!"
    ShowNotificationForm -message $notificationMessage
})


#endregion

[void]$Form.ShowDialog()
