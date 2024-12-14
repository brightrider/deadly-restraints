Scriptname BRDRScript extends ActiveMagicEffect

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

    Game.AddHavokBallAndSocketConstraint(target, "NPC L Hand [LHnd]", target, "NPC R Hand [RHnd]")
EndFunction
