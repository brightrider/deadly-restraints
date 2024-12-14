Scriptname BRDRScript extends ActiveMagicEffect

Spell Property BRDRSpell Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
    If ! akTarget.HasSpell(BRDRSpell)
        akTarget.AddSpell(BRDRSpell)
    EndIf
EndEvent
