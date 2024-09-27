Import-Module AWS.Tools.S3

$region = "us-east-1"

$bucketName = Read-Host -Prompt "Enter S3 Bucket Name: "

Write-Host "AWS Region: $region"
Write-Host "Bucket Name: $bucketName"


function BucketExists {
    $bucket = Get-S3Bucket -BucketName $bucketName -ErrorAction SilentlyContinue
    return $null -ne $bucket
}

if (-not (BucketExists)){
    New-S3Bucket -BucketName $bucketName -Region $region
} else {
    Write-Host "Bucket already exists..."
}



# Create new file
Write-Host "Creating sample file..."
$fileName = "myfile.txt"
$fileContent = "Hello Teng!"
Set-Content -Path $fileName -Value $fileContent

Write-Host "Uploading sample file $fileName to $bucketName..."
Write-S3Object -BucketName $bucketName -File $fileName -Key $fileName

Remove-Item -Path "$fileName" -Confirm