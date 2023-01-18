Config = {}

-- Blip Creation

Config.UseBlip = false

Config.BlipLocation = {
    {title="Shady Dealer", colour=37, id=47, x = -462.73, y = -66.37, z = 44.90},
} 

-- Ped Spawns

Config.Peds = {
    {
        type = 'donglenpc',
        position = vector4(-475.11, -35.1, 45.38, 199.27)
    },
}

-- Menu Contents


Config.Shop = {
    [1] = {
        item = "electronickit",
        price = 3000,
        type = "cash",
        icon = "fa-solid fa-laptop-code",
    },
    [2] = {
        item = "boostinglaptop",
        price = 5000,
        type = "cash",
        icon = "fa-solid fa-laptop-code",
    },
    [3] = {
        item = "boostingdisabler",
        price = 2500,
        type = "cash",
        icon = "fa-solid fa-laptop-code",
    },
    [4] = {
        item = "trojan_usb",
        price = 1500,
        type = "cash",
        icon = "fa-solid fa-laptop-code",
    },
    [5] = {
        item = "drill",
        price = 2000,
        type = "cash",
        icon = "fa-solid fa-laptop-code",
    }
}
