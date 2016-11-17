User.create!(email: "admin@gmail.com", name: "Admin", password: "1",
  password_confirmation: "1", role: "admin" )

User.create!(email: "user@gmail.com", name: "User", password: "1",
  password_confirmation: "1", role: "user" )

MobileBrand.create!([
  {name: "Apple"},
  {name: "Nokia"},
  {name: "Samsung"},
  {name: "Sony"},
  {name: "LG"},
  {name: "OPPO"},
  {name: "HTC"},
  {name: "Microsoft"},
  {name: "XiaoMi"},
  {name: "Lenovo"},
  {name: "Acer"},
  {name: "Asus"},
  {name: "Blackberry"},
  {name: "Toshiba"},
  {name: "Motorola"},

])

10.times do |i|
  Mobile.create!(
    name: "Phone #{i+1}",
    description: "",
    mobile_brand_id: "#{i+1}",
    network_technology: "GSM / CDMA / HSPA / EVDO / LTE",
    launch_announced: "2016, September",
    launch_status: "Available. Released 2016, September",
    body_dimensions: "138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)",
    body_weight: 138, body_sim: "Nano-SIM\n- IP67 certified - dust and water resista...",
    display_type: "LED-backlit IPS LCD, capacitive touchscreen, 16M c...",
    display_size: "4.7 inches (~65.6% screen-to-body ratio)",
    display_resolution: "750 x 1334 pixels (~326 ppi pixel density)",
    display_multitouch: "Yes",
    platform_os: "iOS 10.0.1, upgradable to iOS 10.1",
    platform_chipset: "Apple A10 Fusion",
    platform_CPU: "Quad-core",
    platform_GPU: "(six-core graphics)",
    memory_cardslot: "No",
    memory_internal: "32/128/256 GB, GB, 2 GB RAM",
    camera_primary: "12 MP, f/1.8, 28mm, phase detection autofocus, OIS...",
    camera_features: "1/3\" sensor size, geo-tagging, simultaneous 4K vid...",
    camera_video: "2160p@30fps, 1080p@30/60/120fps, 720p@240fps, chec...",
    camera_secondary: "7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face ...",
    sound_alerttypes: "Vibration, proprietary ringtones",
    sound_loudspeakers: "Yes, with stereo speakers",
    sound_35mmjack: "No\n- Active noise cancellation with dedicated mic\n...",
    comms_wlan: "Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot",
    comms_bluetooth: "v4.2, A2DP, LE",
    comms_gps: "Yes, with A-GPS, GLONASS",
    comms_nfc: "Yes (Apple Pay only)",
    comms_radio: "No",
    comms_usb: "v2.0, reversible connector",
    features_sensors: "Fingerprint, accelerometer, gyro, proximity, compa...",
    features_messaging: "iMessage, SMS (threaded view), MMS, Email, Push Em...",
    features_browser: "HTML5 (Safari)",
    features_java: "No\n",
    features_misc: "- Siri natural language commands and dictation\n- i...",
    battery: "Non-removable Li-Ion 1960 mAh battery (7.45 Wh)",
    misc_colors: "Jet Black, Black, Silver, Gold, Rose Gold",
    price_groups: "9/10",
    image_file_name: "iphone7.jpg",
    image_content_type: "image/jpeg",
    image_file_size: 10498,
    image_updated_at: "2016-10-28 08:08:11",
    thickness: "138g, 7.1mm thickness",
    os: "iOS 10.0.1, up to iOS 10.1",
    storage: "32/128/256GB storage, no card slot",
    display: "4.7\"\n750x1334 pixels",
    camera: "12MP\n2160p",
    ram: "2GB RAM\nApple A10 Fusion",
    battery_spec: "1960mAh\nLi-Ion"
  )
end


content = "<p>Trong buổi lễ ra mắt iPhone 7, Apple đ&atilde; tự h&agrave;o về bước đi t&aacute;o bạo của việc loại bỏ đi jack &acirc;m thanh 3.5mm. Nhưng x&eacute;t về tổng thể th&igrave; dường như họ đ&atilde; đi v&agrave;o con đường m&ograve;n khi thiết kế b&ecirc;n ngo&agrave;i chiếc iPhone mới cơ bản giống với người tiền nhiệm iPhone 6.</p>

circ;n mạnh mẽ so với iPhone 6s về cả thiết kế lẫn hiệu năng, nhưng Apple đ&atilde; biết c&aacute;ch ho&agrave;n thiện n&oacute; hơn kh&aacute; nhiều khắc phục được tương đối c&aacute;c điểm yếu c&oacute; mặt tr&ecirc;n thế hệ cũ đặc bi&ecirc;t l&agrave; thời lượng pin v&agrave; camera. D&ugrave; thế n&agrave;o đi chẳng nữa th&igrave; iPhone 7 vẫn l&agrave; một sự lựa chọn rất tuyệt vời trong những chiếc flagship hiện tại v&igrave; n&oacute; thực sự to&agrave;n diện.</p>
"

Review.create!(content: content,
user_id: 1,
mobile_id: 1,
image_file_name: "download.jpg",
image_content_type: "image/jpeg",
image_file_size: 4229,
image_updated_at: "2016-11-01 07:04:14")

