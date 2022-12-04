$sid = "AC529612889d9d007c534a2fb1e0f9c6cd"
$token = "b8807b0475edcc1ad59e34fdd1792256"
$phone_number = "+16073035807"
$verified_number = "08025010933"

# Twilio APIエンドポイントとPOSTパラメーター
$url = "https://api.twilio.com/2010-04-01/Accounts/$sid/Messages.json"
$params = @{ To = $verified_number ; From = $phone_number ; Body = "Hello from Twilio" }

# HTTP Basic認証用の認証情報オブジェクトを作成
$p = $token | ConvertTo-SecureString -asPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($sid, $p)

# APIリクエストを送信し、レスポンスからJSONプロパティを選択
Invoke-WebRequest $url -Method Post -Credential $credential -Body $params -UseBasicParsing 
ConvertFrom-Json | Select sid, body