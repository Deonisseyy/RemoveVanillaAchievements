-- vanilla achievements data.raw structure
local achievementData = {
    ["achievement"] = {
        "so-long-and-thanks-for-all-the-fish"
    },
    ["build-entity-achievement"] = {
        "getting-on-track",
        "getting-on-track-like-a-pro",
    },
    ["combat-robot-count"] = {
        "minions"
    },
    ["construct-with-robots-achievement"] = {
        "automated-construction",
        "you-are-doing-it-right",
    },
    ["deconstruct-with-robots-achievement"] = {
        "automated-cleanup"
    },
    ["deliver-by-robots-achievement"] = {
        "delivery-service",
        "you-have-got-a-package"
    },
    ["dont-build-entity-achievement"] = {
        "logistic-network-embargo",
        "raining-bullets"
    },
    ["dont-craft-manually-achievement"] = {
        "lazy-bastard"
    },
    ["dont-use-entity-in-energy-production-achievement"] = {
        "solaris",
        "steam-all-the-way"
    },
    ["finish-the-game-achievement"] = {
        "no-time-for-chitchat",
        "smoke-me-a-kipper-i-will-be-back-for-breakfast",
        "there-is-no-spoon"
    },
    ["group-attack-achievement"] = {
        "it-stinks-and-they-dont-like-it"
    },
    ["kill-achievement"] = {
        "pyromaniac",
        "run-forrest-run",
        "steamrolled"
    },
    ["player-damaged-achievement"] = {
        "golem",
        "watch-your-step"
    },
    ["produce-achievement"] = {
        "mass-production-1",
        "mass-production-2",
        "mass-production-3"
    },
    ["produce-per-hour-achievement"] = {
        "circuit-veteran-1",
        "circuit-veteran-2",
        "circuit-veteran-3",
        "computer-age-1",
        "computer-age-2",
        "computer-age-3",
        "iron-throne-1",
        "iron-throne-2",
        "iron-throne-3"
    },
    ["research-achievement"] = {
        "eco-unfriendly",
        "tech-maniac"
    },
    ["train-path-achievement"] = {
        "trans-factorio-express"
    }
}

-- users's ignored achievements names (internal names)
local ignoredAchievements = settings.startup["rva-filter"].value;

-- achievements removing
for ty, achs in pairs(achievementData) do
    for idx, name in pairs(achs) do
        if not ignoredAchievements:find(name, 1, true) then
            data.raw[ty][name] = nil;
        end
    end
end