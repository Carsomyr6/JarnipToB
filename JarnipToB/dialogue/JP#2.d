BEGIN ~JP#2~

IF ~True()~ THEN BEGIN Greeting
  SAY @0 /* Well, well... If it isn't the Bhaalspawn I encountered in Athkatla! I had a feeling our paths would cross again. I was traveling south on business and stopped in Saradush for the night. Of course, those damn giants had to choose that very moment to besiege the city! Now I find myself trapped here with everyone else, while my associates in Calimshan are wondering where their promised deliveries have gone. */
  IF ~~ THEN GOTO Offer
END

IF ~~ THEN BEGIN Offer
  SAY @1 /* Convincing the local guards to let me leave the city requires a substantial amount of gold, and my purse is not a Bag of Holding. Luckily, I have some of the most valuable relics from my collection here with me. Normally, I would only part with these artifacts for a small fortune, but given the... unusual circumstances, I am willing to offer you a considerable discount. Would you like to see my wares? */
  ++ @2 /* Let's see what you have. */ DO ~StartStore("JP#2",LastTalkedToBy(Myself))~ EXIT
  ++ @3 /* No, thank you. */ EXIT
END
