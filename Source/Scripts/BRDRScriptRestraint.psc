Scriptname BRDRScriptRestraint extends ActiveMagicEffect

Event OnEffectStart(Actor akTarget, Actor akCaster)
    Restraint()
EndEvent

Event OnDying(Actor akKiller)
    Restraint()
EndEvent

Function Restraint()
    Actor target = GetTargetActor()

    If ! target.IsDead()
        Return
    EndIf

    ; zbf Hand Cuffs Backside Black
    ; zbf Cross Pole
    ; zbf Belt Chastity (x2)
    String currentItemName = target.GetEquippedArmorInSlot(59).GetName()
    If currentItemName == "zbf Hands Crossed Front 01"
        Game.AddHavokBallAndSocketConstraint(target, "NPC L Hand [LHnd]", target, "NPC R Hand [RHnd]", afRefALocalOffsetX=5)
    ElseIf currentItemName == "zbf Hands Crossed Front 02"
        Game.AddHavokBallAndSocketConstraint(target, "NPC L Hand [LHnd]", target, "NPC R Hand [RHnd]", afRefALocalOffsetX=5)
    ElseIf currentItemName == "zbf Hands Crossed Front In Scarfs"
        Game.AddHavokBallAndSocketConstraint(target, "NPC L Hand [LHnd]", target, "NPC R Hand [RHnd]", afRefALocalOffsetX=5)
    ElseIf currentItemName == "zbf Wrists Crossed Rope 01"
        Game.AddHavokBallAndSocketConstraint(target, "NPC L Hand [LHnd]", target, "NPC R Hand [RHnd]", afRefALocalOffsetX=5)
    ElseIf currentItemName == "zbf Wrists Crossed Rope 02"
        Game.AddHavokBallAndSocketConstraint(target, "NPC L Hand [LHnd]", target, "NPC R Hand [RHnd]", afRefALocalOffsetX=5)
    ElseIf currentItemName == "zbf Wrists Crossed Scarfs"
        Game.AddHavokBallAndSocketConstraint(target, "NPC L Hand [LHnd]", target, "NPC R Hand [RHnd]", afRefALocalOffsetX=5)
    EndIf
EndFunction
