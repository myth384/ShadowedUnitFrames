if( GetLocale() ~= "koKR" ) then
	return
end
ShadowUFLocals = setmetatable({
	-- Errors
	["Invalid tag used %s."] = "Invalid tag used %s.",
	["Cannot register layout %s, string or table expected for data got %s."] = "Cannot register layout %s, string or table expected for data got %s.",
	["Cannot register layout, no name passed."] = "Cannot register layout, no name passed.",
	["Cannot register tag, no name passed."] = "Cannot register tag, no name passed.",
	["Cannot register tag %s, string expected got %s."] = "Cannot register tag %s, string expected got %s.",
	["Cannot register layout, configuration should be a table got %s."] = "Cannot register layout, configuration should be a table got %s.",
	["Cannot register tag, data should be passed as {help = \"help text\", events = \"EVENT_A EVENT_B\", funct = \"function(unit) return \"Foo\" end}"] = "Cannot register tag, data should be passed as {help = \"help text\", events = \"EVENT_A EVENT_B\", funct = \"function(unit) return \"Foo\" end}",
	
	-- Layout text
	["Left text"] = "왼쪽 글자",
	["Right text"] = "오른쪽 글자",
	["Middle text"] = "가운데 글자",
	
	-- Tag text
	["Dead"] = "죽음",
	["Aggro"] = "어그로",
	["Offline"] = "오프라인",
	["Male"] = "남자",
	["Female"] = "여자",
	["Rare"] = "희귀",
	["Ghost"] = "유령",
	["Elite"] = "정예",
	["Rare Elite"] = "희귀 정예",
	["Boss"] = "보스",
	["(AFK)"] = "(자리비움)",
	["(DND)"] = "(다른용무중)",
	
	-- GUI
	["Tags"] = "Tags",
	["Layout"] = "Layout",
	["Layouts"] = "Layouts",
	["Units"] = "Units",
	["Error"] = "에러",
	["General"] = "일반",
	["Search tag"] = "태그 찾기",
	["Screen"] = "화면",
	["Party member"] = "파티 멤버",
	["Bar texture"] = "Bar texture",
	
	-- Help
	["Help"] = "도움말",
	["Select the units that you want to modify, any settings changed will change every unit you selected. If you want to anchor or change raid/party unit specific settings you will need to do that through their options.\n\nShift click a unit to select all/unselect all."] = "Select the units that you want to modify, any settings changed will change every unit you selected. If you want to anchor or change raid/party unit specific settings you will need to do that through their options.\n\nShift click a unit to select all/unselect all.",
	["In this category you can configure all of the enabled units, both what features to enable as well as tweaking the layout. Advanced settings in the general category if you want to be able to get finer control on setting options, but it's not recommended for most people.\n\nHere's what each tab does\n\nGeneral - General settings, portrait settings, combat text, anything that doesn't fit the other categories.\n\nFrame - Frame settings, scale, height, width. You can set the frame to be anchored to another here.\n\nBars - Enabling bars (health/cast/etc) as well as setting how the health bar can be colored.\n\nWidget size - Widget sizing, ordering, height.\n\nAuras - What filters to use, where to place auras.\n\nText - Quickly add and remove tags to text, when advanced settings are enabled you can also change the width and positioning of text."] = "In this category you can configure all of the enabled units, both what features to enable as well as tweaking the layout. Advanced settings in the general category if you want to be able to get finer control on setting options, but it's not recommended for most people.\n\nHere's what each tab does\n\nGeneral - General settings, portrait settings, combat text, anything that doesn't fit the other categories.\n\nFrame - Frame settings, scale, height, width. You can set the frame to be anchored to another here.\n\nBars - Enabling bars (health/cast/etc) as well as setting how the health bar can be colored.\n\nWidget size - Widget sizing, ordering, height.\n\nAuras - What filters to use, where to place auras.\n\nText - Quickly add and remove tags to text, when advanced settings are enabled you can also change the width and positioning of text.",
	
	-- Positions
	["Up"] = "위",
	["Center"] = "가운데",
	["Down"] = "아래",
	["Right Top"] = "오른쪽 위",
	["Right Center"] = "오른쪽 가운데",
	["Right Bottom"] = "오른쪽 아래",
	["Left Top"] = "왼쪽 위",
	["Left Center"] = "왼쪽 가운데",
	["Left Bottom"] = "오른쪽 아래",
	["Bottom Left"] = "하단 왼쪽",
	["Bottom Center"] = "하단 가운데",
	["Bottom Right"] = "하단 오른쪽",
	["Inside Center Left"] = "안쪽(내부) 가운데 왼쪽",
	["Inside Center"] = "안쪽(내부) 가운데",
	["Inside Center Right"] = "안쪽(내부) 가운데 오른쪽",
	["Top Right"] = "상단 오른쪽",
	["Top Center"] = "상단 가운데",
	["Top Left"] = "상단 왼쪽",
	["Inside Top Right"] = "안쪽(내부) 상단 오른쪽",
	["Inside Top Left"] = "안쪽(내부) 상단 왼쪽",
	["Inside Bottom Right"] = "안쪽(내부) 하단 오른쪽",
	["Inside Bottom Left"] = "안쪽(내부) 하단 왼쪽",

	["Inside"] = "안쪽(내부)",
	["Bottom"] = "하단",
	["Top"] = "상단",
	["Left"] = "왼쪽",
	["Right"] = "오른쪽",
	
	-- Hiding
	["Hide Blizzard"] = "블리자드 숨기기",
	["Hide %s"] = "%s 숨기기",
	["Cast bars"] = "시전 바",
	["If you hide a frame, you will have to do a /console reloadui for them to show back up again."] = "If you hide a frame, you will have to do a /console reloadui for them to show back up again.",

	-- Units
	["Full size"] = "Full size",
	["Ignores the portrait and uses the entire frames width, the bar will be drawn either above or below the portrait depending on the order."] = "Ignores the portrait and uses the entire frames width, the bar will be drawn either above or below the portrait depending on the order.",
	["Management"] = "Management",
	["Import"] = "Import",
	["Export"] = "Export",
	["Global"] = "Global",
	["global"] = "Global",
	["Order to use for the portrait, this only applies if you have a full sized bar."] = "Order to use for the portrait, this only applies if you have a full sized bar.",
	["Modify settings"] = "Modify settings",
	["Units to modify"] = "Units to modify",
	["Adds %s to the list of units to be modified when you change values in this tab."] = "Adds %s to the list of units to be modified when you change values in this tab.",
	["Bars"] = "Bars",
	["Color health by"] = "Color health by",
	["Reaction"] = "Reaction",
	["Class"] = "Class",
	["Width weight"] = "Width weight",
	["Static"] = "Static",
	["Show cast icon"] = "Show cast icon",
	["Show cast name"] = "Show cast name",
	["Show cast time"] = "Show cast time",
	["Health percent"] = "Health percent",
	["Color on aggro"] = "Color on aggro",
	["Threat"] = "위협수치",
	["Enable %s"] = "%s 사용",
	["How many auras to show in a single row."] = "How many auras to show in a single row.",
	["Per row"] = "Per row",
	["Power color"] = "파워 색깔",
	["Health color"] = "체력 색깔",
	["Max rows"] = "Max rows",
	["Rows"] = "Rows",
	["How many rows total should be used, rows will be however long the per row value is set at."] = "How many rows total should be used, rows will be however long the per row value is set at.",
	["How many auras per a column for example, entering two her will create two rows that are filled up to whatever per row is set as."] = "How many auras per a column for example, entering two her will create two rows that are filled up to whatever per row is set as.",
	["Enlarge your auras"] = "Enlarge your auras",
	["If you casted the aura, then the buff icon will be increased in size to make it more visible."] = "If you casted the aura, then the buff icon will be increased in size to make it more visible.",
	["Anchor to"] = "Anchor to",
	["How you want this aura to be anchored to the unit frame."] = "How you want this aura to be anchored to the unit frame.",
	["How much weight this should use when figuring out the total text width."] = "How much weight this should use when figuring out the total text width.",
	["X Offset"] = "X Offset",
	["Y Offset"] = "Y Offset",
	["Buffs"] = "버프",
	["Debuffs"] = "디버프",
	["Filters"] = "필터",
	["Auras"] = "오러",
	["Position"] = "Position",
	["XP/Reputation bar"] = "경험치/평판 바",
	["This bar will automatically hide when you are at the level cap, or you do not have any reputations tracked."] = "This bar will automatically hide when you are at the level cap, or you do not have any reputations tracked.",
	["Anchor point"] = "Anchor point",
	["Where to anchor the cast time text."] = "Where to anchor the cast time text.",
	["Where to anchor the cast name text."] = "Where to anchor the cast name text.",
	["Cast time"] = "시전 시간",
	["Cast name"] = "시전 이름",
	["General bars"] = "일반 바",
	["Height"] = "높이",
	["Width"] = "넓이",
	["Show frame indicators"] = "Show frame indicators",
	["Vehicles"] = "탈 것",
	["Disable vehicle swap"] = "Disable vehicle swap",
	["Disables the unit turning into a vehicle frame when the unit enters a vehicle."] = "Disables the unit turning into a vehicle frame when the unit enters a vehicle.",
	["Shows example frames using the same sizing and position as the real ones do, these example frames can be repositioned.\n\nThis setting is not persistent and the option will be disabled once you log out."] = "Shows example frames using the same sizing and position as the real ones do, these example frames can be repositioned.\n\nThis setting is not persistent and the option will be disabled once you log out.",
	["Buff icons"] = "버프 아이콘",
	["Scale"] = "크기",
	["Portrait type"] = "초상화 타입",
	["3D"] = "3D",
	["2D"] = "2D",
	["Class icon"] = "클래스 아이콘",
	["Text"] = "글자",
	["Tag wizard"] = "태그 마법사",
	["Show your auras only"] = "당신의 오러만 보기",
	["Filter out any auras that you did not cast yourself."] = "Filter out any auras that you did not cast yourself.",
	["Show curable only"] = "Show curable only",
	["Filter out any aura that you cannot cure."] = "Filter out any aura that you cannot cure.",
	["Show castable on other auras only"] = "Show castable on other auras only",
	["Filter out any auras that you cannot cast on another player, or yourself."] = "Filter out any auras that you cannot cast on another player, or yourself.",
	["Enable buffs"] = "버프 사용",
	["Select a text widget from the left side panel to set tags, you can use this page to change the truncate width and sizing."] = "Select a text widget from the left side panel to set tags, you can use this page to change the truncate width and sizing.",
	["Enable debuffs"] = "디버프 사용",
	["Show player in frame"] = "Show player in frame",
	["How the frame should grow when new group members are added."] = "How the frame should grow when new group members are added.",
	["How the columns should grow when too many people are shown in a single group."] = "How the columns should grow when too many people are shown in a single group.",
	["Percentage of the frames width that this text should use."] = "Percentage of the frames width that this text should use.",
	["Group number"] = "그룹 이름",
	["Group by"] = "Group by",
	["Sort order"] = "Sort order",
	["Max columns"] = "Max columns",
	["Units per column"] = "Units per column",
	["Column spacing"] = "Column spacing",
	["Column growth"] = "Column growth",
	["Frame growth"] = "Frame growth",
	["Groups"] = "그룹",
	["Timers for self auras only"] = "Timers for self auras only",
	["Hides the cooldown ring for any auras that you did not cast."] = "Hides the cooldown ring for any auras that you did not cast.",
	["Filter out irrelevant debuffs"] = "Filter out irrelevant debuffs",
	["Automatically filters out debuffs that you don't care about, if you're a magic class you won't see Rend/Deep Wounds, physical classes won't see Curse of the Elements and so on."] = "Automatically filters out debuffs that you don't care about, if you're a magic class you won't see Rend/Deep Wounds, physical classes won't see Curse of the Elements and so on.",
	["Combat alpha"] = "전투시 투명화",
	["Alpha to use when you are in combat for this unit."] = "Alpha to use when you are in combat for this unit.",
	["Inactive alpha"] = "Inactive alpha",
	["Ascending"] = "Ascending",
	["Descending"] = "Descending",
	["Alpha to use when the unit is inactive meaning, not in combat, have no target and mana is at 100%."] = "Alpha to use when the unit is inactive meaning, not in combat, have no target and mana is at 100%.",
	["Growth"] = "Growth",
	["Spacing"] = "Spacing",
	["Prioritize buffs"] = "Prioritize buffs",
	["Show buffs before debuffs when sharing the same anchor point."] = "Show buffs before debuffs when sharing the same anchor point.",
	["Color by reaction"] = "Color by reaction",
	["If the unit is hostile, the reaction color will override any color health by options."] = "If the unit is hostile, the reaction color will override any color health by options.",
	["When showing incoming heals, include your heals in the total incoming."] = "When showing incoming heals, include your heals in the total incoming.",
	["Offsets are saved using effective scaling, this is to prevent the frame from jumping around when you reload or login."] = "Offsets are saved using effective scaling, this is to prevent the frame from jumping around when you reload or login.",
	["Per column"] = "Per column",
	["Raid groups to show"] = "레이드 그룹 보기",
	["Group %d"] = "그룹 %d",
	["Fuel"] = "Fuel",
	["Ammo"] = "Ammo",
	["Let's you modify the base font size to either make it larger or smaller."] = "Let's you modify the base font size to either make it larger or smaller.",
	["Enable quick health"] = "quick health 사용",
	["Enable quick power"] = "quick power 사용",
	["This will enable fast updating of the health bar, giving you more slightly faster health bar information than you normally would get."] = "This will enable fast updating of the health bar, giving you more slightly faster health bar information than you normally would get.",
	["This will enable fast updating of the power bar, giving you more slightly faster power information than you normally would get."] = "This will enable fast updating of the power bar, giving you more slightly faster power information than you normally would get.",
	["You can find more information on creating your own custom tags in the \"Lua help\" tab above.\nSUF will attempt to automatically detect what events your tag will need, so you do not generally need to fill out the events field."] = "You can find more information on creating your own custom tags in the \"Lua help\" tab above.\nSUF will attempt to automatically detect what events your tag will need, so you do not generally need to fill out the events field.",
	["Disable event discovery"] = "Disable event discovery",
	["This will disable the automatic detection of what events this tag will need, you should leave this unchecked unless you know what you are doing."] = "This will disable the automatic detection of what events this tag will need, you should leave this unchecked unless you know what you are doing.",
	["You can find more information on creating your own custom tags in the \"Lua help\" tab above."] = "You can find more information on creating your own custom tags in the \"Lua help\" tab above.",
	["Learning how to use Lua is fairly straightforward, Programming in Lua (Link above) is a good resource for learning the basic syntax, and WoW Programming (Link above) has information on WoW specific API's you need to create.\n\nTags support basic prefix and suffix if the tag itself contains anything, for example: [(()name())] will prefix \"(\" and suffix \")\" to the [name] tag if it is showing anything."] = "Learning how to use Lua is fairly straightforward, Programming in Lua (Link above) is a good resource for learning the basic syntax, and WoW Programming (Link above) has information on WoW specific API's you need to create.\n\nTags support basic prefix and suffix if the tag itself contains anything, for example: [(()name())] will prefix \"(\" and suffix \")\" to the [name] tag if it is showing anything.",
	
	-- Lua help
	["Lua help"] = "Lua help",
	["Resources"] = "Resources",
	["WoW Programming"] = "WoW Programming",
	["WoW Programming is a good resource for finding out what difference API's do and how to call them."] = "WoW Programming is a good resource for finding out what difference API's do and how to call them.",
	["Programming in Lua"] = "Programming in Lua",
	["This is a good guide on how to get started with programming in Lua, while you do not need to read the entire thing it is a helpful for understanding the basics of Lua syntax and API's."] = "This is a good guide on how to get started with programming in Lua, while you do not need to read the entire thing it is a helpful for understanding the basics of Lua syntax and API's.",
	["Information"] = "Information",
	["Learning how to use Lua is fairly straightforward, Programming in Lua (Link above) is a good resource for learning the basic syntax, and WoW Programming (Link above) has information on WoW specific API's you need to create.\n\nSee the above example tabs for examples on basic tag creation.\n\nTags also support basic prefix and suffix if the tag itself contains anything, for example: [(()name())] will prefix \"(\" and suffix \")\" to the [name] tag if it is showing anything."] = "Learning how to use Lua is fairly straightforward, Programming in Lua (Link above) is a good resource for learning the basic syntax, and WoW Programming (Link above) has information on WoW specific API's you need to create.\n\nSee the above example tabs for examples on basic tag creation.\n\nTags also support basic prefix and suffix if the tag itself contains anything, for example: [(()name())] will prefix \"(\" and suffix \")\" to the [name] tag if it is showing anything.",
	["Example #%d"] = "Example #%d",
	
	-- Layout
	["Layout"] = "Layout",
	["Point"] = "Point",
	["Relative point"] = "Relative point",
	["How much of the frames total height this bar should get, this is a weighted value, the higher it is the more it gets."] = "How much of the frames total height this bar should get, this is a weighted value, the higher it is the more it gets.",
	["Anchor"] = "Anchor",
	["%s frames"] = "%s frames",
	["Offset"] = "Offset",
	["Manual position"] = "Manual position",
	["Anchor to another frame"] = "Anchor to another frame",
	["Or you can set a position manually"] = "Or you can set a position manually",
	["Widget size"] = "Widget size",
	["Width percent"] = "Width percent",
	["Percentage of width the portrait should use."] = "Percentage of width the portrait should use.",
	["Order"] = "Order",
	["Show background"] = "Show background",
	["Show a background behind the bars with the same texture/color but faded out."] = "Show a background behind the bars with the same texture/color but faded out.",
	["Alignment"] = "Alignment",
	["Show background"] = "Show background",
	
	-- General
	["Hide tooltips in combat"] = "Hide tooltips in combat",
	["Sets if unit tooltips should be hidden while in combat."] = "Sets if unit tooltips should be hidden while in combat.",
	["Lock frames"] = "Lock frames",
	["Advanced"] = "Advanced",
	["Enabling advanced settings will allow you to further tweak settings. This is meant for people who want to tweak every single thing, and should not be enabled by default as it increases the options."] = "Enabling advanced settings will allow you to further tweak settings. This is meant for people who want to tweak every single thing, and should not be enabled by default as it increases the options.",
	["Edge size"] = "Edge size",
	["How large the edges should be."] = "How large the edges should be.",
	["Tile size"] = "Tile size",
	["How large the background should tile"] = "How large the background should tile",
	["Inset"] = "Inset",
	["How far into the frame the background will be shown"] = "How far into the frame the background will be shown",
	
	["Tag management"] = "태그 관리",
	["Profiles"] = "Profiles",
	["Enable units"] = "Enable units",
	["Bar colors"] = "바 색깔",
	["Class colors"] = "직업 색깔",
	["Power bar"] = "파워 바",
	["Mana"] = "마나",
	["Rage"] = "분노",
	["Focus"] = "Focus",
	["Energy"] = "기력",
	["Happiness"] = "Happiness",
	["Runes"] = "룬",
	["Runic Power"] = "룬 파워",
	["Health bar"] = "체력 바",
	["Color"] = "색깔",
	["High health"] = "높은 체력",
	["Half health"] = "중간 체력",
	["Low health"] = "낮은 체력",
	["Health bar color used as the transitional color for 100% -> 50% on players, as well as when your pet is happy."] = "Health bar color used as the transitional color for 100% -> 50% on players, as well as when your pet is happy.",
	["Health bar color used as the transitional color for 100% -> 0% on players, as well as when your pet is mildly unhappy."] = "Health bar color used as the transitional color for 100% -> 0% on players, as well as when your pet is mildly unhappy.",
	["Health bar color used as the transitional color for 50% -> 0% on players, as well as when your pet is very unhappy."] = "Health bar color used as the transitional color for 50% -> 0% on players, as well as when your pet is very unhappy.",
	["Standard health bar color"] = "Standard health bar color",
	["Color to use when a mob is tapped by someone besides yourself or your group."] = "Color to use when a mob is tapped by someone besides yourself or your group.",
	["Background/border"] = "Background/border",
	["Font"] = "폰트",
	["Size"] = "크기",
	["Background"] = "Background",
	["Border"] = "Border",
	["Border color"] = "Border color",
	["Background color"] = "Background color",
	["Tapped"] = "Tapped",
	["Tapped color"] = "Tapped color",
	["Health color"] = "Health color",
	["Incoming heal"] = "Incoming heal",
	["Health bar color to use to show how much healing someone is about to receive."] = "Health bar color to use to show how much healing someone is about to receive.",
	["None"] = "None",
	["Clip"] = "Clip",
	["How close the frame should clip with the border."] = "How close the frame should clip with the border.",
	["Extra"] = "Extra",
	["Aura size, this is the starting size they will resize once a row is filled up."] = "Aura size, this is the starting size they will resize once a row is filled up.",
	["Enable indicator"] = "Enable indicator",
	["Show your heals"] = "Show your heals",
	["In range alpha"] = "In range alpha",
	["Out of range alpha"] = "Out of range alpha",
	["Fades out units who you are not in range of, this only works on people who are in your group."] = "Fades out units who you are not in range of, this only works on people who are in your group.",
	["Green health"] = "녹색 체력",
	["Health bar color to use when health bars are showing green."] = "Health bar color to use when health bars are showing green.",
	["Yellow health"] = "노란 체력",
	["Health bar color to use when health bars are showing yellow."] = "Health bar color to use when health bars are showing yellow.",
	["Red health"] = "빨간 체력",
	["Health bar color to use when health bars are showing red, transitional color from green -> red and so on."] = "Health bar color to use when health bars are showing red, transitional color from green -> red and so on.",
	["Friendly"] = "우호",
	["Health bar color for friendly units."] = "Health bar color for friendly units.",
	["Neutral"] = "중립",
	["Health bar color for neutral units."] = "Health bar color for neutral units.",
	["Hostile"] = "적대",
	["Health bar color for hostile units."] = "Health bar color for hostile units.",
	["Incoming heal"] = "Incoming heal",
	["Health bar color to use to show how much healing someone is about to receive."] = "Health bar color to use to show how much healing someone is about to receive.",
	["Unattackable hostile"] = "Unattackable hostile",
	["Health bar color to use for hostile units who you cannot attack, used for reaction coloring."] = "Health bar color to use for hostile units who you cannot attack, used for reaction coloring.",
	
	-- Tags
	["Events"] = "Events",
	["Edit"] = "Edit",
	["Events that should be used to trigger an update of this tag. Separate each event with a single space."] = "Events that should be used to trigger an update of this tag. Separate each event with a single space.",
	["You have to set the events to fire, you can only enter letters and underscores, \"FOO_BAR\" for example is valid, \"APPLE_5_ORANGE\" is not because it contains a number."] = "You have to set the events to fire, you can only enter letters and underscores, \"FOO_BAR\" for example is valid, \"APPLE_5_ORANGE\" is not because it contains a number.",
	["Add new tag"] = "새로운 태그 추가",
	["Editing %s"] = "Editing %s",
	["Edit tag"] = "태그 수정",
	["Tag list"] = "태그 리스트",
	["Tags"] = "태그",
	["Tag name"] = "태그 이름",
	["Tag that you will use to access this code, do not wrap it in brackets or parenthesis it's automatically done. For example, you would enter \"foobar\" and then access it with [foobar]."] = "Tag that you will use to access this code, do not wrap it in brackets or parenthesis it's automatically done. For example, you would enter \"foobar\" and then access it with [foobar].",
	["Help text"] = "텍스트 도움말",
	["Help text to show that describes what this tag does."] = "Help text to show that describes what this tag does.",
	["Tag function"] = "Tag function",
	["Code"] = "코드",
	["Your code must be wrapped in a function, for example, if you were to make a tag to return the units name you would do:\n\nfunction(unit)\nreturn UnitName(unit)\nend"] = "Your code must be wrapped in a function, for example, if you were to make a tag to return the units name you would do:\n\nfunction(unit)\nreturn UnitName(unit)\nend",
	["You must wrap your code in a function."] = "You must wrap your code in a function.",
	["You cannot name a tag \"%s\", tag names should contain no brackets or parenthesis."] = "You cannot name a tag \"%s\", tag names should contain no brackets or parenthesis.",
	["The tag \"%s\" already exists."] = "The tag \"%s\" already exists.",
	["You must enter a tag name."] = "You must enter a tag name.",
	["Failed to save tag, error:\n %s"] = "Failed to save tag, error:\n %s",
	["Are you really sure you want to delete this tag?"] = "Are you really sure you want to delete this tag?",
	["You cannot edit this tag because it is one of the default ones included in this mod. This function is here to provide an example for your own custom tags."] = "You cannot edit this tag because it is one of the default ones included in this mod. This function is here to provide an example for your own custom tags.",
	["Delete"] = "삭제",
	["This tag is included by default and cannot be deleted."] = "This tag is included by default and cannot be deleted.",
	["Search"] = "찾기",
	["Search tags"] = "태그 찾기",
	["Frame"] = "Frame",
	["Hide in 5-man raid"] = "Hide in 5-man raid",
	["Hide in any raid"] = "Hide in any raid",
	["Party frames are hidden while in any sort of raid no matter how many people."] = "Party frames are hidden while in any sort of raid no matter how many people.",
	["Party frames are hidden while in a raid group with more than 5 people inside."] = "Party frames are hidden while in a raid group with more than 5 people inside.",
	["Frames"] = "Frames",
	
	-- Visibility
	["Visibility"] = "Visibility",
	["Enable %s frames"] = "Enable %s frames",
	["You can set different units to be enabled or disabled in different areas here.\nGold checked are enabled, Gray checked are disabled, Unchecked are ignored and use the current set value no matter the zone."] = "You can set different units to be enabled or disabled in different areas here.\nGold checked are enabled, Gray checked are disabled, Unchecked are ignored and use the current set value no matter the zone.",
	["Enabled in %s"] = "Enabled in %s",
	["Disabled in %s"] = "Disabled in %s",
	["Using unit settings"] = "Using unit settings",
	
	-- Indicators
	["indicators"] = {
		["status"] = "상태",
		["pvp"] = "PvP 깃발",
		["leader"] = "공격대장",
		["masterLoot"] = "룻 담당자",
		["raidTarget"] = "공격대 목표",
		["happiness"] = "Happiness",
		["ready"] = "전투준비 상태",
	},
	
	["classes"] = {
		["HUNTER"] = "사냥꾼",
		["WARLOCK"] = "흑마법사",
		["PRIEST"] = "사제",
		["PALADIN"] = "성기사",
		["MAGE"] = "마법사",
		["ROGUE"] = "도적",
		["DRUID"] = "드루이드",
		["SHAMAN"] = "주술사",
		["WARRIOR"] = "전사",
		["DEATHKNIGHT"] = "죽음의 기사",
		["PET"] = "소환수",
		["VEHICLE"] = "탈 것",
	},
	
	-- Instance types
	["areas"] = {
		["pvp"] = "전장",
		["arena"] = "투기장",
		["party"] = "파티 던전",
		["raid"] = "공격대 던전",
	},
	
	["headers"] = {
		["party"] = "파티 #%d",
		["raid"] = "공격대 #%d",
	},
	
	-- Unit names
	["units"] = {
		["player"] = "플레이어",
		["pet"] = "소환수",
		["target"] = "대상",
		["targettarget"] = "대상의 대상",
		["targettargettarget"] = "대상의 대상의 대상",
		["focus"] = "주시대상",
		["focustarget"] = "주시대상 타겟",
		["party"] = "파티",
		["partypet"] = "파티 소환수",
		["partytarget"] = "파티 타겟",
		["raid"] = "공격대",
	},
		
	-- Module names
	["Combat fader"] = "전투중 색깔 변화",
	["Totems"] = "토템",
	["Rune bar"] = "룬 바",
	["Health bar"] = "체력 바",
	["Cast bar"] = "시전 바",
	["XP/Rep bar"] = "경험치/평판 바",
	["Auras"] = "오러",
	["Indicators"] = "지시기",
	["Portrait"] = "초상화",
	["Power bar"] = "파워 바",
	["Combat text"] = "전투 텍스트",
	["Rune bar"] = "룬 바",
	["Totem bar"] = "토템 바",
	["Combo points"] = "콤보 포인트",
	["Incoming heals"] = "Incoming heals",
	["Range indicator"] = "거리 지시기",
	
	-- Tag help
	["When the unit is mising health, the [missinghp] tag is shown, when they are at full health then the [name] tag is shown. This lets you see -1000 when they are missing 1000 HP, but their name when they are not missing any."] = "When the unit is mising health, the [missinghp] tag is shown, when they are at full health then the [name] tag is shown. This lets you see -1000 when they are missing 1000 HP, but their name when they are not missing any.",
	["Same tag as %s, but this only shows up if the unit is in Bear or Cat form."] = "Same tag as %s, but this only shows up if the unit is in Bear or Cat form.",
	["Closes a color code, pretends colors from showing up on text that you do not want it to."] = "Closes a color code, pretends colors from showing up on text that you do not want it to.",
	["Shows the current group number of the unit."] = "Shows the current group number of the unit.",
	["Reaction color code, use [reactcolor][name][close] to color the units name by their reaction."] = "Reaction color code, use [reactcolor][name][close] to color the units name by their reaction.",
	["Class name, use [classcolor][class][close] if you want a colored class name."] = "Class name, use [classcolor][class][close] if you want a colored class name.",
	["Color code for the class, use [classcolor][class][close] if you want the class text to be colored by class"] = "Color code for the class, use [classcolor][class][close] if you want the class text to be colored by class",
	["Absolute maximum health value without any formating so 15000 is still shown as 15000."] = "Absolute maximum health value without any formating so 15000 is still shown as 15000.",
	["Absolute current health value without any formating so 15000 is still shown as 15000."] = "Absolute current health value without any formating so 15000 is still shown as 15000.",
	["Absolute maximum power value without any formating so 15000 is still shown as 15000."] = "Absolute maximum power value without any formating so 15000 is still shown as 15000.",
	["Absolute current power value without any formating so 15000 is still shown as 15000."] = "Absolute current power value without any formating so 15000 is still shown as 15000.",
	["Shows AFK or DND flags if they are toggled."] = "Shows AFK or DND flags if they are toggled.",
	["Absolute current/max health, without any formating so 17750 is still formatted as 17750."] = "Absolute current/max health, without any formating so 17750 is still formatted as 17750.",
	["Absolute current/max power, without any formating so 17750 is still formatted as 17750."] = "Absolute current/max power, without any formating so 17750 is still formatted as 17750.",
	["Unit name colored by class."] = "Unit name colored by class.",
	["Units classification, Rare, Rare Elite, Elite, Boss, nothing is shown if they aren't any of those."] = "Units classification, Rare, Rare Elite, Elite, Boss, nothing is shown if they aren't any of those.",
	["Returns Offline if the unit is offline, otherwise nothing is shown."] = "Returns Offline if the unit is offline, otherwise nothing is shown.",
	["Level without any coloring."] = "Level without any coloring.",
	["Current health, uses a short format, 11500 is formatted as 11.5k, values below 10000 are formatted as is."] = "Current health, uses a short format, 11500 is formatted as 11.5k, values below 10000 are formatted as is.",
	["Amount of health missing, if none is missing nothing is shown. Uses a short format, -18500 is shown as -18.5k, values below 10000 are formatted as is."] = "Amount of health missing, if none is missing nothing is shown. Uses a short format, -18500 is shown as -18.5k, values below 10000 are formatted as is.",
	["Unit name"] = "Unit name",
	["Amount of power missing,  if none is missing nothing is shown. Uses a short format, -13850 is shown as 13.8k, values below 10000 are formatted as is."] = "Amount of power missing,  if none is missing nothing is shown. Uses a short format, -13850 is shown as 13.8k, values below 10000 are formatted as is.",
	["Max power, uses a short format, 16000 is formatted as 16k, values below 10000 are formatted as is."] = "Max power, uses a short format, 16000 is formatted as 16k, values below 10000 are formatted as is.",
	["Current and maximum power, formatted as [curpp]/[maxpp]."] = "Current and maximum power, formatted as [curpp]/[maxpp].",
	["Unit race, for a Blood Elf then Blood Elf is returned, for a Night Elf than Night Elf is returned and so on."] = "Unit race, for a Blood Elf then Blood Elf is returned, for a Night Elf than Night Elf is returned and so on.",
	["Returns the units sex."] = "Returns the units sex.",
	["Returns + if the unit is an elite or rare elite mob."] = "Returns + if the unit is an elite or rare elite mob.",
	["Returns current health as a percentage, if the unit is dead or offline than that is shown instead."] = "Returns current health as a percentage, if the unit is dead or offline than that is shown instead.",
	["Returns Rare if the unit is a rare or rare elite mob."] = "Returns Rare if the unit is a rare or rare elite mob.",
	["Current power, uses a short format, 12750 is formatted as 12.7k, values below 10000 are formatted as is."] = "Current power, uses a short format, 12750 is formatted as 12.7k, values below 10000 are formatted as is.",
	["Current and maximum health, formatted as [curhp]/[maxhp], if the unit is dead or offline then that is shown instead."] = "Current and maximum health, formatted as [curhp]/[maxhp], if the unit is dead or offline then that is shown instead.",
	["Short classifications, R for Rare, R+ for Rare Elite, + for Elite, B for boss, nothing is shown if they aren't any of those."] = "Short classifications, R for Rare, R+ for Rare Elite, + for Elite, B for boss, nothing is shown if they aren't any of those.",
	["Total number of combo points you have on your target."] = "Total number of combo points you have on your target.",
	["If the unit is dead, returns dead, if they are a ghost then ghost is returned, if they aren't either then nothing is shown."] = "If the unit is dead, returns dead, if they are a ghost then ghost is returned, if they aren't either then nothing is shown.",
	["Units status, Dead, Ghost, Offline, nothing is shown if they aren't any of those."] = "Units status, Dead, Ghost, Offline, nothing is shown if they aren't any of those.",
	["Returns current power as a percentage."] = "Returns current power as a percentage.",
	["Smart level, returns Boss for bosses, +50 for a level 50 elite mob, or just 80 for a level 80."] = "Smart level, returns Boss for bosses, +50 for a level 50 elite mob, or just 80 for a level 80.",
	["Units alignment, Thrall will return Horde, Magni Bronzebeard will return Alliance."] = "Units alignment, Thrall will return Horde, Magni Bronzebeard will return Alliance.",
	["Colored level by difficulty, no color used if you cannot attack the unit."] = "Colored level by difficulty, no color used if you cannot attack the unit.",
	["For players, it will return a class, for mobs than it will return their creature type."] = "For players, it will return a class, for mobs than it will return their creature type.",
	["Max health, uses a short format, 17750 is formatted as 17.7k, values below 10000 are formatted as is."] = "Max health, uses a short format, 17750 is formatted as 17.7k, values below 10000 are formatted as is.",
	["Colored class, use [class] for just the class name without coloring."] = "Colored class, use [class] for just the class name without coloring.",
	["Create type, for example, if you're targeting a Felguard then this will return Felguard."] = "Create type, for example, if you're targeting a Felguard then this will return Felguard.",
	["Class, use [classcolor] if you want a colored class name."] = "Class, use [classcolor] if you want a colored class name.",
	["Shows the units health as a percentage rounded to the first decimal, meaning 61 out of 110 health is shown as 55.4%."] = "Shows the units health as a percentage rounded to the first decimal, meaning 61 out of 110 health is shown as 55.4%.",
})