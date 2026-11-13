-- 191 

local replicatedStorage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local tweenService = game:GetService("TweenService")
local marketplaceService = game:GetService("MarketplaceService")
local playerGui = players.LocalPlayer:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("CobaltBoomboxUI") then
  playerGui.CobaltBoomboxUI:Destroy()
end

local cobaltBoomboxUI = Instance.new("ScreenGui")
cobaltBoomboxUI.Name = "CobaltBoomboxUI"
cobaltBoomboxUI.ResetOnSpawn = false
cobaltBoomboxUI.Parent = playerGui

local v1 = ""
local udim = UDim2.new(0, 60, 0, 60)
local v2 = {}
local flag = false
local v3 = { "105897470677289", "74337026363347", "88304875101616", "119903494880474" }

local function f1()
  return math.random(10000000, 99999999) .. math.random(1000000, 9999999)
end

local f2

local function getJoined()
  local v4 = table.create(120)
  v4[1] = "129328538348341&[ by IT ไอโง่ ]"
  v4[2] = ""
  v4[3] = "\nกันไออิทสำหรับเด็กน้อยขอกันดักคับ\nกันไออิทสำหรับเด็กน้อยขอกันดักคับ\nกันไออิทสำหรับเด็กน้อยขอกันดักคับ\nกันไออิทสำหรับเด็กน้อยขอกันดักคับ\nกันไออิทสำหรับเด็กน้อยขอกันดักคับ\n"

  local v5 = 4

  for i = 1, 1000 do
    v4[v5] = "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
    v5 = v5 + 1
  end

  v4[v5] = "&"
  local v6 = v5 + 1

  for j = 1, 50 do
    v4[v6] = (j > 1 and "&id=" or "id=") .. f2()
    v6 = v6 + 1
  end

  v4[v6] = "&"
  local v7 = v6 + 1

  for k = 1, 1000 do
    v4[v7] = "\t\t\t\t\t\t\t\t\t\t\t\t" .. "\t\t\t\t\t\t\t\t\t\t\t\t"
      .. "\t\t\t\t\t\t\t\t\t\t\t\t" .. "\t\t\t\t\t\t\t\t\t\t\t\t" .. f2()

    v7 = v7 + 1
  end

  v4[v7] = "&id="

  local v8 = table.create(120)
  v8[1] = "&"

  local v9 = 2

  for m = 1, 300 do
    v8[v9] = "=" .. math.random(0, 9) .. "id=1155443399003322" .. "id=672244551100557733"
      .. "id=676722339911774455224433" .. f2()

    v9 = v9 + 1
  end

  v8[v9] = "&"
  local v10 = v9 + 1

  for n = 1, 300 do
    v8[v10] = "=" .. "%38%38%33%30%34%38%37%35%31%30%31%36%31%36" .. "id=523475832094857"
      .. math.random(0, 9) .. "id=118495385934295" .. math.random(0, 9) .. "%3"
      .. math.random(0, 9)

    v10 = v10 + 1
  end

  v8[v10] = "&"
  local v11 = v10 + 1

  for i6 = 1, 500 do
    v8[v11] = "=%3" .. math.random(0, 9) .. "%3" .. math.random(0, 9) .. "id="
      .. "%38%38%33%30%34%38%37%35%31%30%31%36%31%36" .. "%3" .. math.random(0, 9)

    v11 = v11 + 1
  end

  return table.concat(v4, ""), table.concat(v8, "")
end

function f2()
  if math.random(1, 3) == 1 then
    local v12 = v3[math.random(1, #v3)]
    return string.gsub(v12, ".", "%%3%0")
  end

  return f1()
end

local function f3()
  if flag then
    return
  end

  flag = true

  task.defer(function()
    local v13 = {}

    for i7 = 1, 5 do
      local pre, post = getJoined()
      v13[i7] = { pre = pre, post = post }
    end

    v2 = v13
    flag = false
  end)
end

f3()

local list = {}
local list2 = {}

local re = replicatedStorage:FindFirstChild("RE") or replicatedStorage:FindFirstChild("Network")
  or replicatedStorage

if re then
  for _, value in ipairs(re:GetDescendants()) do
    if value:IsA("RemoteEvent") then
      local lower = value.Name:lower()

      if lower:find("tool") or lower:find("music") or lower:find("boombox") or lower == "re"
        or value.Name == "1NoMoto1rVehicle1s" or lower:find("vehicle") then
        table.insert(list, value)
      end
    elseif value:IsA("RemoteFunction") then
      table.insert(list2, value)
    end
  end
end

if #list == 0 and re then
  for _, value2 in ipairs(re:GetDescendants()) do
    if value2:IsA("RemoteEvent") then
      table.insert(list, value2)
      break
    end
  end
end

local imageButton = Instance.new("ImageButton")
imageButton.Size = udim
imageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
imageButton.AnchorPoint = Vector2.new(0.5, 0.5)
imageButton.BackgroundColor3 = Color3.fromRGB(30, 18, 12)
imageButton.BackgroundTransparency = 0
imageButton.Image = "rbxassetid://117808644786538"
imageButton.Active = true
imageButton.Draggable = true
imageButton.Visible = true
imageButton.Parent = cobaltBoomboxUI

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = imageButton

local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(255, 140, 40)
uiStroke.Transparency = 0.3
uiStroke.Thickness = 1.5
uiStroke.Parent = imageButton

local udim2 = UDim2.new(0, 310, 0, 185)

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 0, 0, 0)
frame.Position = UDim2.new(0.5, 0, 0.4, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(20, 14, 10)
frame.BackgroundTransparency = 0
frame.Active = true
frame.Draggable = true
frame.Visible = false
frame.ClipsDescendants = true
frame.Parent = cobaltBoomboxUI

local uiCorner2 = Instance.new("UICorner")
uiCorner2.CornerRadius = UDim.new(0, 10)
uiCorner2.Parent = frame

local uiStroke2 = Instance.new("UIStroke")
uiStroke2.Color = Color3.fromRGB(255, 140, 40)
uiStroke2.Transparency = 0.3
uiStroke2.Thickness = 1.5
uiStroke2.Parent = frame

local uiGradient = Instance.new("UIGradient")

uiGradient.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 20, 12)),
  ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 10, 8)),
})

uiGradient.Rotation = 90
uiGradient.Parent = frame

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, -40, 0, 20)
textLabel.Position = UDim2.new(0, 16, 0, 12)
textLabel.Text = "ควาย"
textLabel.TextColor3 = Color3.fromRGB(255, 165, 50)
textLabel.TextSize = 19
textLabel.Font = Enum.Font.Code
textLabel.TextXAlignment = Enum.TextXAlignment.Left
textLabel.BackgroundTransparency = 1
textLabel.Parent = frame

local textButton = Instance.new("TextButton")
textButton.Size = UDim2.new(0, 22, 0, 22)
textButton.Position = UDim2.new(1, -16, 0, 12)
textButton.AnchorPoint = Vector2.new(1, 0)
textButton.Text = "X"
textButton.TextColor3 = Color3.fromRGB(255, 200, 150)
textButton.TextSize = 14
textButton.Font = Enum.Font.Code
textButton.BackgroundColor3 = Color3.fromRGB(40, 22, 14)
textButton.BackgroundTransparency = 0
textButton.Parent = frame

local uiCorner3 = Instance.new("UICorner")
uiCorner3.CornerRadius = UDim.new(0, 6)
uiCorner3.Parent = textButton

local uiStroke3 = Instance.new("UIStroke")
uiStroke3.Color = Color3.fromRGB(255, 140, 40)
uiStroke3.Transparency = 0.3
uiStroke3.Thickness = 1
uiStroke3.Parent = textButton

local textLabel2 = Instance.new("TextLabel")
textLabel2.Size = UDim2.new(1, -32, 0, 16)
textLabel2.Position = UDim2.new(0, 16, 0, 38)
textLabel2.Text = "> ชื่อ: -"
textLabel2.TextColor3 = Color3.fromRGB(240, 180, 110)
textLabel2.TextSize = 10
textLabel2.Font = Enum.Font.Code
textLabel2.TextXAlignment = Enum.TextXAlignment.Left
textLabel2.BackgroundTransparency = 1
textLabel2.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, -32, 0, 30)
textBox.Position = UDim2.new(0, 16, 0, 60)
textBox.PlaceholderText = "กรอก Music ID..."
textBox.PlaceholderColor3 = Color3.fromRGB(140, 90, 60)
textBox.Text = ""
textBox.TextColor3 = Color3.fromRGB(255, 230, 200)
textBox.BackgroundColor3 = Color3.fromRGB(25, 16, 12)
textBox.BackgroundTransparency = 0
textBox.TextSize = 11
textBox.Font = Enum.Font.Code
textBox.Parent = frame

local uiCorner4 = Instance.new("UICorner")
uiCorner4.CornerRadius = UDim.new(0, 6)
uiCorner4.Parent = textBox

local uiStroke4 = Instance.new("UIStroke")
uiStroke4.Color = Color3.fromRGB(230, 120, 30)
uiStroke4.Transparency = 0.4
uiStroke4.Thickness = 1
uiStroke4.Parent = textBox

local function makeTextButton(frame2, udim3, udim4, text, color, color2)
  local frame3 = Instance.new("Frame")
  frame3.Size = udim4
  frame3.Position = udim3
  frame3.BackgroundTransparency = 1
  frame3.Parent = frame2

  local frame4 = Instance.new("Frame")
  frame4.Size = UDim2.new(1, 0, 1, 0)
  frame4.Position = UDim2.new(0, 0, 0, 3)
  frame4.BackgroundColor3 = color2
  frame4.BorderSizePixel = 0
  frame4.Parent = frame3

  local uiCorner5 = Instance.new("UICorner")
  uiCorner5.CornerRadius = UDim.new(0, 6)
  uiCorner5.Parent = frame4

  local textButton2 = Instance.new("TextButton")
  textButton2.Size = UDim2.new(1, 0, 1, -3)
  textButton2.Position = UDim2.new(0, 0, 0, 0)
  textButton2.Text = text
  textButton2.TextColor3 = Color3.fromRGB(255, 245, 235)
  textButton2.BackgroundColor3 = color
  textButton2.TextSize = 10
  textButton2.Font = Enum.Font.Code
  textButton2.BorderSizePixel = 0
  textButton2.Parent = frame3

  local uiCorner6 = Instance.new("UICorner")
  uiCorner6.CornerRadius = UDim.new(0, 6)
  uiCorner6.Parent = textButton2

  local uiGradient2 = Instance.new("UIGradient")

  uiGradient2.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(180, 180, 180)),
  })

  uiGradient2.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.15), NumberSequenceKeypoint.new(1, 0.45),
  })

  uiGradient2.Rotation = 90
  uiGradient2.Parent = textButton2

  local uiStroke5 = Instance.new("UIStroke")
  uiStroke5.Color = Color3.fromRGB(255, 180, 100)
  uiStroke5.Transparency = 0.3
  uiStroke5.Thickness = 1
  uiStroke5.Parent = textButton2

  textButton2.MouseButton1Down:Connect(function()
    tweenService:Create(textButton2, TweenInfo.new(
      0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out
    ), { Position = UDim2.new(0, 0, 0, 3) }):Play()

    tweenService:Create(uiStroke5, TweenInfo.new(
      0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out
    ), { Transparency = 0.1 }):Play()
  end)

  local function f4()
    tweenService:Create(textButton2, TweenInfo.new(
      0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out
    ), { Position = UDim2.new(0, 0, 0, 0) }):Play()

    tweenService:Create(uiStroke5, TweenInfo.new(
      0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out
    ), { Transparency = 0.3 }):Play()
  end

  textButton2.MouseButton1Up:Connect(f4)
  textButton2.MouseLeave:Connect(f4)

  return textButton2
end

local textButton3 = makeTextButton(
  frame, UDim2.new(0, 16, 0, 98), UDim2.new(0, 133, 0, 32), "Execute",
  Color3.fromRGB(245, 120, 20), Color3.fromRGB(110, 45, 5)
)

local textButton4 = makeTextButton(
  frame, UDim2.new(0, 161, 0, 98), UDim2.new(0, 133, 0, 32), "หยิบลำโพง",
  Color3.fromRGB(220, 100, 25), Color3.fromRGB(100, 40, 8)
)

local textButton5 = makeTextButton(
  frame, UDim2.new(0, 16, 0, 138), UDim2.new(0, 133, 0, 32),
  "เสกสเก็ตบอร์ด", Color3.fromRGB(210, 90, 30),
  Color3.fromRGB(90, 35, 10)
)

local textButton6 = makeTextButton(
  frame, UDim2.new(0, 161, 0, 138), UDim2.new(0, 133, 0, 32),
  "ลบสเก็ตบอร์ด", Color3.fromRGB(210, 60, 40),
  Color3.fromRGB(90, 20, 15)
)

local flag2 = false

imageButton.MouseButton1Down:Connect(function()
  tweenService:Create(
    imageButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    { Size = UDim2.new(0, 52, 0, 52) }
  ):Play()
end)

imageButton.MouseButton1Click:Connect(function()
  if flag2 then
    return
  end

  flag2 = true

  local create = tweenService:Create(imageButton, TweenInfo.new(
    0.15, Enum.EasingStyle.Back, Enum.EasingDirection.In
  ), { Size = UDim2.new(0, 0, 0, 0) })

  create:Play()

  create.Completed:Connect(function()
    imageButton.Visible = false
    imageButton.Size = udim

    frame.Size = UDim2.new(0, 0, 0, 0)
    frame.Visible = true

    local create2 = tweenService:Create(frame, TweenInfo.new(
      0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out
    ), { Size = udim2 })

    create2:Play()
    create2.Completed:Connect(function() flag2 = false end)
  end)
end)

imageButton.MouseLeave:Connect(function()
  tweenService:Create(
    imageButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    { Size = udim }
  ):Play()
end)

textButton.MouseButton1Down:Connect(function()
  tweenService:Create(
    textButton, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    { Size = UDim2.new(0, 18, 0, 18) }
  ):Play()
end)

textButton.MouseButton1Click:Connect(function()
  if flag2 then
    return
  end

  flag2 = true

  tweenService:Create(
    textButton, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    { Size = UDim2.new(0, 22, 0, 22) }
  ):Play()

  local create3 = tweenService:Create(frame, TweenInfo.new(
    0.25, Enum.EasingStyle.Back, Enum.EasingDirection.In
  ), { Size = UDim2.new(0, 0, 0, 0) })

  create3:Play()

  create3.Completed:Connect(function()
    frame.Visible = false

    imageButton.Size = UDim2.new(0, 0, 0, 0)
    imageButton.Visible = true

    local create4 = tweenService:Create(imageButton, TweenInfo.new(
      0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out
    ), { Size = udim })

    create4:Play()
    create4.Completed:Connect(function() flag2 = false end)
  end)
end)

textButton.MouseLeave:Connect(function()
  tweenService:Create(
    textButton, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    { Size = UDim2.new(0, 22, 0, 22) }
  ):Play()
end)

textButton4.MouseButton1Click:Connect(function()
  v1 = ""
  textLabel2.Text = "> ชื่อ: -"

  for _, value3 in ipairs(list2) do
    task.spawn(function()
      pcall(function() value3:InvokeServer("PickingTools", "Boombox") end)
    end)
  end
end)

textButton5.MouseButton1Click:Connect(function()
  task.spawn(function()
    pcall(function()
      local emotesStopSyncableEmote = replicatedStorage.Remotes:FindFirstChild("Emotes:StopSyncableEmote")

      if emotesStopSyncableEmote then
        emotesStopSyncableEmote:FireServer()
      end
    end)

    task.wait(0.1)

    pcall(function()
      local findFirstChild = replicatedStorage.RE:FindFirstChild("1NoMoto1rVehicle1s")

      if findFirstChild then
        findFirstChild:FireServer("SkateBoard", nil)
      end
    end)

    task.wait(0.1)

    pcall(function()
      local setNoMotorVehicleSpeed = replicatedStorage.Remotes:FindFirstChild("SetNoMotorVehicleSpeed")

      if setNoMotorVehicleSpeed then
        setNoMotorVehicleSpeed:InvokeServer(25)
      end
    end)

    pcall(function()
      local getNoMotorVehicleSpeed = replicatedStorage.Remotes:FindFirstChild("GetNoMotorVehicleSpeed")

      if getNoMotorVehicleSpeed then
        getNoMotorVehicleSpeed:InvokeServer()
      end
    end)

    pcall(function()
      local findFirstChild2 = replicatedStorage.RE:FindFirstChild("1NoMoto1rVehicle1s")

      if findFirstChild2 then
        findFirstChild2:FireServer("PickingScooterMusicText", "")
      end
    end)
  end)
end)

textButton6.MouseButton1Click:Connect(function()
  task.spawn(function()
    pcall(function()
      local setBoost = replicatedStorage.Remotes:FindFirstChild("SetBoost")

      if setBoost then
        setBoost:FireServer(false)
      end
    end)

    task.wait(0.1)

    pcall(function()
      local findFirstChild3 = replicatedStorage.RE:FindFirstChild("1NoMoto1rVehicle1s")

      if findFirstChild3 then
        findFirstChild3:FireServer("Delete NoMotorVehicle")
      end
    end)
  end)
end)

textButton3.MouseButton1Click:Connect(function()
  local text2 = textBox.Text
  local match = string.match(tostring(text2), "%d+")

  if not match then
    return
  end

  local v14 = tostring(tonumber(match, 10))
  v1 = v14
  textLabel2.Text = "> ชื่อ: กำลังขึ้นชื่อเพลง"

  task.spawn(function()
    local ok, result = pcall(function()
      return marketplaceService:GetProductInfo(tonumber(v14))
    end)

    if ok and result and result.Name then
      textLabel2.Text = "> ชื่อ: " .. result.Name
    else
      textLabel2.Text = "> ชื่อ: ไม่มีชื่อเพลง"
    end
  end)

  if #v2 == 0 then
    while flag do
      task.wait()
    end
  end

  local replaced = string.gsub(
    "00ใส่_Audio_ID_อินโทรตรงนี้", ".", "%%3%0"
  )

  local v15 = (v2[1] and v2[1].pre or "") .. replaced .. (v2[1] and v2[1].post or "")

  for _, value4 in ipairs(list) do
    pcall(function()
      if value4.Name == "1NoMoto1rVehicle1s" then
        value4:FireServer("PickingScooterMusicText", v15)
      else
        value4:FireServer("ToolMusicText", v15)
      end
    end)
  end

  local total = 0

  while total < 2 do
    if v1 ~= v14 then
      return
    end

    task.wait(0.1)
    total = total + 0.1
  end

  if v1 ~= v14 then
    return
  end

  local replaced2 = string.gsub("00" .. v14, ".", "%%3%0")
  local v16 = (v2[1] and v2[1].pre or "") .. replaced2 .. (v2[1] and v2[1].post or "")

  for _, value5 in ipairs(list) do
    pcall(function()
      if value5.Name == "1NoMoto1rVehicle1s" then
        value5:FireServer("PickingScooterMusicText", v16)
      else
        value5:FireServer("ToolMusicText", v16)
      end
    end)
  end

  f3()
end)
