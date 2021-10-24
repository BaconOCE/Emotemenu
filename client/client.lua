-- **********************************************************************
-- ** YOU MUST HAVE DPEMOTES AND MENUV INSTALLED FOR THIS MENU TO WORK **
-- **********************************************************************
-- **********************************************************************
-- ** YOU MUST HAVE DPEMOTES AND MENUV INSTALLED FOR THIS MENU TO WORK **
-- **********************************************************************
-- **********************************************************************
-- ** YOU MUST HAVE DPEMOTES AND MENUV INSTALLED FOR THIS MENU TO WORK **
-- **********************************************************************
-- **********************************************************************
-- ** YOU MUST HAVE DPEMOTES AND MENUV INSTALLED FOR THIS MENU TO WORK **
-- **********************************************************************

-- CREATE MENU (MAIN MENU)
local menu = MenuV:CreateMenu('MY CITY MENU', 'MY CITY MENU', 'topleft', 255, 0, 0, 'size-125', 'default', 'menuv', 'Main Menu')
local menu1 = MenuV:CreateMenu('MY CITY MENU', "Emotes Menu", 'topleft', 255, 0, 0, 'size-125', 'default', 'menuv', 'Emotes Menu')
local menu2 = MenuV:CreateMenu('MY CITY MENU', 'Dance Emotes', 'topleft', 255, 0, 0, 'size-125', 'default', 'menuv', 'Dance Emotes')
local menu3 = MenuV:CreateMenu('MY CITY MENU', 'Prop Emotes', 'topleft', 255, 0, 0, 'size-125', 'default', 'menuv', 'Prop Emotes')
local menu4 = MenuV:CreateMenu('MY CITY MENU', 'Walk Styles', 'topleft', 255, 0, 0, 'size-125', 'default', 'menuv', 'Walk Styles')

-- PRINCIPAL MENU (MAIN MENU BUTTONS)
local menu_button1 = menu:AddButton({ icon = '😃', label = 'Emotes Menu', value = menu1, description = 'Dance Emotes & Prop Emotes' })
local menu_button2 = menu:AddButton({ icon = '🚶‍♀️', label = 'Walking Styles', value = menu4, description = 'Pick a Walking Style' })

-- MENU 1 (EMOTES MENU)
local menu_button1 = menu1:AddButton({ icon = '🕺', label = 'Dance Emotes', value = menu2, description = 'Dance Emotes' })
local menu_button2 = menu1:AddButton({ icon = '📦', label = 'Prop Emotes', value = menu3, description = 'Prop Emotes' })

-- MENU 2 (DANCE EMOTES)
menu2:On('open', function(m)
    m:ClearItems()
    local elements = {
        [1] = {label = 'Dance', value = "e dance", description = '/e dance'},
        [2] = {label = 'Dance 2', value = "e dance2", description = '/e dance2'},
        [3] = {label = 'Dance 3', value = "e dance3", description = '/e dance3'},
        [4] = {label = 'Dance 4', value = "e dance4", description = '/e dance4'},
        [5] = {label = 'Dance 5', value = "e dance5", description = '/e dance5'},
        [6] = {label = 'Dance 6', value = "e dance6", description = '/e dance6'},
        [7] = {label = 'Dance 7', value = "e dance7", description = '/e dance7'},
        [8] = {label = 'Dance 8', value = "e dance8", description = '/e dance8'},
        [9] = {label = 'Dance 9', value = "e dance9", description = '/e dance9'},
        [10] = {label = 'Dance F', value = "e dancef", description = '/e dancef'},
        [11] = {label = 'Dance F2', value = "e dancef2", description = '/e dancef2'},
        [12] = {label = 'Dance F3', value = "e dancef3", description = '/e dancef3'},
        [13] = {label = 'Dance F4', value = "e dancef4", description = '/e dancef4'},
        [14] = {label = 'Dance F5', value = "e dancef5", description = '/e dancef5'},
        [15] = {label = 'Dance F6', value = "e dancef6", description = '/e dancef6'},
        [16] = {label = 'Dance Glowstick', value = "e danceglowstick", description = '/e danceglowstick'},
        [17] = {label = 'Dance Glowstick 2', value = "e danceglowstick2", description = '/e danceglowstick2'},
        [18] = {label = 'Dance Glowstick 3', value = "e danceglowstick3", description = '/e danceglowstick3'},
        [19] = {label = 'Dance Horse', value = "e dancehorse", description = '/e dancehorse'},
        [20] = {label = 'Dance Horse 2', value = "e dancehorse2", description = '/e dancehorse2'},
        [21] = {label = 'Dance Horse 3', value = "e dancehorse3", description = '/e dancehorse3'},
        [22] = {label = 'Dance Shy', value = "e danceshy", description = '/e danceshy'},
        [23] = {label = 'Dance Shy 2', value = "e danceshy2", description = '/e danceshy2'},
        [24] = {label = 'Dance Silly', value = "e dancesilly", description = '/e dancesilly'},
        [25] = {label = 'Dance Silly 2', value = "e dancesilly2", description = '/e dancesilly2'},
        [26] = {label = 'Dance Silly 3', value = "e dancesilly3", description = '/e dancesilly3'},
        [27] = {label = 'Dance Silly 4', value = "e dancesilly4", description = '/e dancesilly4'},
        [28] = {label = 'Dance Silly 5', value = "e dancesilly5", description = '/e dancesilly5'},
        [29] = {label = 'Dance Silly 6', value = "e dancesilly6", description = '/e dancesilly6'},
        [30] = {label = 'Dance Silly 7', value = "e dancesilly7", description = '/e dancesilly7'},
        [31] = {label = 'Dance Silly 8', value = "e dancesilly8", description = '/e dancesilly8'},
        [32] = {label = 'Dance Silly 9', value = "e dancesilly9", description = '/e dancesilly9'},
        [33] = {label = 'Dance Slow', value = "e danceslow", description = '/e danceslow'},
        [34] = {label = 'Dance Slow 2', value = "e danceslow2", description = '/e danceslow2'},
        [35] = {label = 'Dance Slow 3', value = "e danceslow3", description = '/e danceslow3'},
        [36] = {label = 'Dance Slow 4', value = "e danceslow4", description = '/e danceslow4'},
        [37] = {label = 'Dance Upper', value = "e danceupper", description = '/e danceupper'},
        [38] = {label = 'Dance Upper 2', value = "e danceupper2", description = '/e danceupper2'},
    }

    for k,v in ipairs(elements) do
        local menu1_button1 = menu2:AddButton({label = v.label,value = v,description = v.description,select = function(btn)
            local selection = btn.Value
            ExecuteCommand(selection.value)
        end})
    end
end)

-- MENU 3 (PROP EMOTES)
menu3:On('open', function(m)
    m:ClearItems()
    local elements = {
        [1] = {label = 'Backpack', value = "e backpack", description = '/e backpack'},
        [2] = {label = 'Beer', value = "e beer", description = '/e beer'},
        [3] = {label = 'Beg', value = "e beg", description = '/e beg'},
        [4] = {label = 'Bong', value = "e bong", description = '/e bong'},
        [5] = {label = 'Book', value = "e book", description = '/e book'},
        [6] = {label = 'Bouquet', value = "e bouquet", description = '/e bouquet'},
        [7] = {label = 'Box', value = "e box", description = '/e box'},
        [8] = {label = 'Brief 3', value = "e brief3", description = '/e brief3'},
        [9] = {label = 'Burger', value = "e burger", description = '/e burger'},
        [10] = {label = 'Camera', value = "e camera", description = '/e camera'},
        [11] = {label = 'Champagne', value = "e champagne", description = '/e champagne'},
        [12] = {label = 'Champagne Spray', value = "e champagnespray", description = '/e champagnespray'},
        [13] = {label = 'Cig', value = "e cig", description = '/e cig'},
        [14] = {label = 'Cigar', value = "e cigar", description = '/e cigar'},
        [15] = {label = 'Cigar 2', value = "e cigar2", description = '/e cigar2'},
        [16] = {label = 'Clean', value = "e clean", description = '/e clean'},
        [17] = {label = 'Clean 2', value = "e clean2", description = '/e clean2'},
        [18] = {label = 'Clipboard', value = "e clipboard", description = '/e clipboard'},
        [19] = {label = 'Coffee', value = "e coffee", description = '/e coffee'},
        [20] = {label = 'Cup', value = "e cup", description = '/e cup'},
        [21] = {label = 'Donut', value = "e donut", description = '/e donut'},
        [22] = {label = 'Ego Bar', value = "e egobar", description = '/e egobar'},
        [23] = {label = 'Flute', value = "e flute", description = '/e flute'},
        [24] = {label = 'Guitar', value = "e guitar", description = '/e guitar'},
        [25] = {label = 'Guitar 2', value = "e guitar2", description = '/e guitar2'},
        [26] = {label = 'Guitar Electric', value = "e guitarelectric", description = '/e guitarelectric'},
        [27] = {label = 'Guitar Electric 2', value = "e guitarelectric2", description = '/e guitarelectric2'},
        [28] = {label = 'Joint', value = "e joint", description = '/e joint'},
        [29] = {label = 'Make It Rain', value = "e makeitrain", description = '/e makeitrain'},
        [30] = {label = 'Map', value = "e map", description = '/e map'},
        [31] = {label = 'Mugshot', value = "e mugshot", description = '/e mugshot'},
        [32] = {label = 'Notepad', value = "e notepad", description = '/e notepad'},
        [33] = {label = 'Phone', value = "e phone", description = '/e phone'},
        [34] = {label = 'Phone Call', value = "e phonecall", description = '/e phonecall'},
        [35] = {label = 'Rose', value = "e rose", description = '/e rose'},
        [36] = {label = 'Sandwich', value = "e sandwich", description = '/e sandwich'},
        [37] = {label = 'Smoke', value = "e smoke", description = '/e smoke'},
        [38] = {label = 'Smoke 2', value = "e smoke2", description = '/e smoke2'},
        [39] = {label = 'Smoke 3', value = "e smoke3", description = '/e smoke3'},
        [40] = {label = 'Smoke 4', value = "e smoke4", description = '/e smoke4'},
        [41] = {label = 'Soda', value = "e soda", description = '/e soda'},
        [42] = {label = 'Suitcase', value = "e suitcase", description = '/e suitcase'},
        [43] = {label = 'Suitcase 2', value = "e suitcase2", description = '/e suitcase2'},
        [44] = {label = 'Tablet', value = "e tablet", description = '/e tablet'},
        [45] = {label = 'Tablet 2', value = "e tablet2", description = '/e tablet2'},
        [46] = {label = 'Teddy', value = "e teddy", description = '/e teddy'},
        [47] = {label = 'Umbrella', value = "e umbrella", description = '/e umbrella'},
        [48] = {label = 'Whiskey', value = "e whiskey", description = '/e whiskey'},
        [49] = {label = 'Wine', value = "e wine", description = '/e wine'},
    }

        for k,v in ipairs(elements) do
            local menu1_button2 = menu3:AddButton({label = v.label,value = v,description = v.description,select = function(btn)
                local selection = btn.Value
                ExecuteCommand(selection.value)
            end})
        end
    end)

-- MENU 4 (Walk EMOTES)
menu4:On('open', function(m)
    m:ClearItems()
    local elements = {
        [1] =   {label = 'Reset Walk', value = "walk reset", description = '/walk reset'},
        [2] =   {label = 'Injured', value = "walk injured", description = '/walk injured'},
        [3] =   {label = 'Alien', value = "walk alien", description = '/walk alien'},
        [4] =   {label = 'Armored', value = "walk armored", description = '/walk armored'},
        [5] =   {label = 'Arrogant', value = "walk arrogant", description = '/walk arrogant'},
        [6] =   {label = 'Brave', value = "walk brave", description = '/walk brave'},
        [7] =   {label = 'Casual', value = "walk casual", description = '/walk casual'},
        [8] =   {label = 'Casual2', value = "walk casual2", description = '/walk casual2'},
        [9] =   {label = 'Casual3', value = "walk casual3", description = '/walk casual3'},
        [10] =  {label = 'Casual4', value = "walk casual4", description = '/walk casual4'},
        [11] =  {label = 'Casual5', value = "walk casual5", description = '/walk casual5'},
        [12] =  {label = 'Casual6', value = "walk casual6", description = '/walk casual6'},
        [13] =  {label = 'Chichi', value = "walk Chichi", description = '/walk Chichi'},
        [14] =  {label = 'Confident', value = "walk Confident", description = '/walk Confident'},
        [15] =  {label = 'Cop', value = "walk Cop", description = '/walk Cop'},
        [16] =  {label = 'Cop2', value = "walk Cop2", description = '/walk Cop2'},
        [17] =  {label = 'Cop3', value = "walk Cop3", description = '/walk Cop3'},
        [18] =  {label = 'Drunk', value = "walk Drunk", description = '/walk Drunk'},
        [19] =  {label = 'Drunk2', value = "walk Drunk2", description = '/walk Drunk2'},
        [20] =  {label = 'Drunk3', value = "walk Drunk3", description = '/walk Drunk3'},
        [21] =  {label = 'Femme', value = "walk Femme", description = '/walk Femme'},
        [22] =  {label = 'Fire', value = "walk Fire", description = '/walk Fire'},
        [23] =  {label = 'Fire2', value = "walk Fire2", description = '/walk Fire2'},
        [24] =  {label = 'Fire3', value = "walk Fire3", description = '/walk Fire3'},
        [25] =  {label = 'Flee', value = "walk Flee", description = '/walk Flee'},
        [26] =  {label = 'Franklin', value = "walk Franklin", description = '/walk Franklin'},
        [27] =  {label = 'Gangster', value = "walk Gangster", description = '/walk Gangster'},
        [28] =  {label = 'Gangster2', value = "walk Gangster2", description = '/walk Gangster2'},
        [29] =  {label = 'Gangster3', value = "walk Gangster3", description = '/walk Gangster3'},
        [30] =  {label = 'Gangster4', value = "walk Gangster4", description = '/walk Gangster4'},
        [31] =  {label = 'Gangster5', value = "walk Gangster5", description = '/walk Gangster5'},
        [32] =  {label = 'Grooving', value = "walk Grooving", description = '/walk Grooving'},
        [33] =  {label = 'Guard', value = "walk Guard", description = '/walk Guard'},
        [34] =  {label = 'Handcuffs', value = "walk Handcuffs", description = '/walk Handcuffs'},
        [35] =  {label = 'Heels', value = "walk Heels", description = '/walk Heels'},
        [36] =  {label = 'Heels2', value = "walk Heels2", description = '/walk Heels2'},
        [37] =  {label = 'Hiking', value = "walk Hiking", description = '/walk Hiking'},
        [38] =  {label = 'Hipster', value = "walk Hipster", description = '/walk Hipster'},
        [39] =  {label = 'Hobo', value = "walk Hobo", description = '/walk Hobo'},
        [40] =  {label = 'Hurry', value = "walk Hurry", description = '/walk Hurry'},
        [41] =  {label = 'Janitor', value = "walk Janitor", description = '/walk Janitor'},
        [42] =  {label = 'Janitor2', value = "walk Janitor2", description = '/walk Janitor2'},
        [43] =  {label = 'Jog', value = "walk Jog", description = '/walk Jog'},
        [44] =  {label = 'Lemar', value = "walk Lemar", description = '/walk Lemar'},
        [45] =  {label = 'Lester', value = "walk Lester", description = '/walk Lester'},
        [46] =  {label = 'Lester2', value = "walk Lester2", description = '/walk Lester2'},
        [47] =  {label = 'Maneater', value = "walk Maneater", description = '/walk Maneater'},
        [48] =  {label = 'Michael', value = "walk Michael", description = '/walk Michael'},
        [49] =  {label = 'Money', value = "walk Money", description = '/walk Money'},
        [50] =  {label = 'Muscle', value = "walk Muscle", description = '/walk Muscle'},
        [51] =  {label = 'Posh', value = "walk Posh", description = '/walk Posh'},
        [52] =  {label = 'Posh2', value = "walk Posh2", description = '/walk Posh2'},
        [53] =  {label = 'Quick', value = "walk Quick", description = '/walk Quick'},
        [54] =  {label = 'Runner', value = "walk Runner", description = '/walk Runner'},
        [55] =  {label = 'Sassy', value = "walk Sassy", description = '/walk Sassy'},
        [56] =  {label = 'Sassy2', value = "walk Sassy2", description = '/walk Sassy2'},
        [54] =  {label = 'Scared', value = "walk Scared", description = '/walk Scared'},
        [55] =  {label = 'Sexy', value = "walk Sexy", description = '/walk Sexy'},
        [56] =  {label = 'Shady', value = "walk Shady", description = '/walk Shady'},
        [57] =  {label = 'Swagger', value = "walk Swagger", description = '/walk Swagger'},
        [58] =  {label = 'Tough', value = "walk Tough", description = '/walk Tough'},
        [59] =  {label = 'Tough2', value = "walk Tough2", description = '/walk Tough2'},
        [60] =  {label = 'Trash', value = "walk Trash", description = '/walk Trash'},
        [61] =  {label = 'Trash2', value = "walk Trash2", description = '/walk Trash2'},
        [62] =  {label = 'Trevor', value = "walk Trevor", description = '/walk Trevor'},
        [63] =  {label = 'Wide', value = "walk Wide", description = '/walk Wide'},

    }

    for k,v in ipairs(elements) do
        local menu_button2 = menu4:AddButton({label = v.label,value = v,description = v.description,select = function(btn)
            local selection = btn.Value
            ExecuteCommand(selection.value)
        end})
    end
end)

RegisterNetEvent('Emotemenu:client:openMenu') --START OPEN MENU FUNCTION--
AddEventHandler('Emotemenu:client:openMenu', function()
    MenuV:OpenMenu(menu)
end)

menu:OpenWith('KEYBOARD', 'F1') --PRESS F1 TO OPEN MENU
