
rem C:\Users\ericd\anaconda3\Scripts\conda.exe init powershell
rem conda activate vqgan

rem set model=checkpoints/sflckr.ckpt
rem set yaml=checkpoints/sflckr.yaml

set model_1=checkpoints/vqgan_imagenet_f16_16384.ckpt
set yaml_1=checkpoints/vqgan_imagenet_f16_16384.yaml

set model_2=checkpoints/wikiart_16384.ckpt
set yaml_2=checkpoints/wikiart_16384.yaml

set model_3=checkpoints/sflckr.ckpt
set yaml_3=checkpoints/sflckr.yaml

set model_4=checkpoints/coco.ckpt
set yaml_4=checkpoints/coco.yaml

set model_5=checkpoints/vqgan_gumbel_f8_8192.ckpt
set yaml_5=checkpoints/vqgan_gumbel_f8_8192.yaml

set model_6=checkpoints/vqgan_faceshq_f16_1024.ckpt
set yaml_6=checkpoints/vqgan_faceshq_f16_1024.yaml

set model_7=checkpoints/WikiArt_augmented_Steps_7mil_finetuned_1mil.ckpt
set yaml_7=checkpoints/WikiArt_augmented_Steps_7mil_finetuned_1mil.yaml

rem set phrase="superman blue red: 30 | superhero: 40 | sharp pencil: 20 | city : 10"
rem set phrase="Mysteries are revealed in the light of reason"

rem [MOODS] = Surprised Stressed Mad Loved Lonely Weird Uncomfortable Touched Tired Thankful Sympathetic Smart Sleepy Silly Pleased Pessimistic Sick Shocked Satisfied Sad Rushed Restless Relieved Relaxed Rejuvenated Rejected Refreshed Peaceful Optimistic Nerdy Infuriated Indifferent Naughty Morose Moody Mischievous Lethargic Lazy Jealous Irritated Hyper Hot Hopeful High Happy Guilty Grumpy Groggy Grateful Discontent Good Gloomy Frustrated Flirty Exhausted Excited Enraged Energetic Anxious Annoyed Angry Ecstatic Drained Disappointed Dirty Devious Determined Depressed Dark Cynical Curious Alone Aggravated Accomplished Crushed Crazy Crappy Cranky Confused Complacent Cold Chipper Cheerful Calm Bouncy Bored Blissful Bewildered Awake Ashamed Apathetic Amused Envious freaky
rem [YEARS] = 1910 1920 1930 1940 1950 1960 1970 1980 1990 2000 2010 2020
rem nerd geek afro 
rem chocolat public private 
rem [ANIMALS] = cat dog ape vermin fox lion
rem [FUTURIST] = cyber digital web radio airwave bitcoin
rem [CAREER] = architect artist Barista carer chemist coder comedian composer  dancer dentist drummer ecology green fashion hairdresser makeup 
rem [FANTASY ROLES] alchemist archer astrologer barbarian barber bard beggar brewer bricklayer brigand butcher cartographer chatelaine clergy pope cook courtesan dictator diplomat distiller diver diviner emperor explorer farmer geisha groom hermit hunter illuminator interpreter inventor jailer inmate prisoner knight masseuse merchant messenger miner minstrel monk noble nun pariah peasant perfumer philosopher pilgrim priest prince prostitute queen ruler samurai scavenger servant shaman shepherd soldier slave sorcerer spice space student taxman torturer vermin viking goth babacool witch wizard wrestler barbarian bard cleric druid knight paladin enchanter rogue necromancer cavalier inquisitor 
rem set words=addict anarchist angel anoymous ape artificial atomic avatar black boss brute chief classic clown colours combat crusador degenerate devil doctor drunk electric elf extrovert fomo fox friend gamer ghost grumpy grunge hacker hardrock hero hilarious hiphop hobbit hologram ice introvert japan joker judge killer king lady lord magician manga metaverse musk ogre old pirate poor power president punk rambo ranger rap reggae rich robot samaritan sexy sioux smart smoke speed storm stupid thief tired tramp trash vampire warrior white yolo young zen zombie  aggressive anxious calm careless confident courageous dejected distant emotional fragile intolerant motivated negative positive energy lazer

set file=./_input/00370.png
set /A resX = 512
set /A resY = 512
set /A iterations=20
set saveevery=1
set model=%model_3%
set yaml=%yaml_3%
set theme=ECHO

rem animals:  Ape Bat Beaver Bee Bison "Black Panther" Butterfly Calamar Camel Cat Chameleon Chicken Cobra Cow Crab Crocodile Dalmatian Deer  Dodo Dog Dolphin  Donkey Dragon Dragonfly Duck Eagle Elephant Flamingo Fox Frog Girafe Goat Gorilla Heron Hippopotamus Horse Iguana Jackal Jellyfish Kangaroo Kingfisher Kiwi Koala Krill Lemur Leopard Lion Lizard Llama Lobster Locust Lynx Magpie "Manta Ray" Marmot  Meerkat Mole Mongoose Monkey Mosquito Mouse Mule Octopus Okapi Opossum Orang-utan Orca Ostrich Otter Pangolin Panther Papillon Parrot Peacock Pelican Penguin Pig Pigeon Piranha "Polar Bear" Porcupine Prawn Puma Rabbit Raccoon Reindeer Rhinoceros Robin Salamander Scorpion Sheep Snail Snake Squirrel Swan  Tapir Tiger Toucan Turtle Whale Wolf Zebra
rem music: "Acid House" "Acid Techno" "Acid Trance" "Acoustic Blues" "African Blues" "Afro-Beat" "Afro-Pop" "Alternative Rock" "A cappella" "Background Easy Listening" Ballet Baroque Bluegrass "Blues-Rock" Blues "Blues Rock" "Blue Note" Bop Bounce Breakbeat Breakcore Britpunk Cantique Celtic "Celtic Folk" "Chill Out" Choral Classical Concerto "Country Blues" "Country Pop" "Country Rock" "Country Soul" "Dance-Punk" "Dance-Rock" Deathcore "Death Metal" Drumstep Dubstep "Electric Blues" "Electronic Ambient" "Electronic Rock" Electropop Electropunk "Electro House" Flamenco "Folk Blues" "Folk Punk" Funk Garage Gospel "Gospel Blues" Goth "Gregorian Chant" Grunge Hardcore "Hardcore Punk" "Hard Rock" "Heavy Metal" "Hip-Hop" "Hip House" "Indie Folk" "Indie Rock" Instrumental Jazz "Jazz Fusion" Latino "Liquid Funk" Lounge Metal Metalcore "New Rave" "New Wave" Opera Orchestral "Piano Blues" Polka "Pop Rock" Progressive Psybreaks "Psychedelic Folk" punk Punkabilly "R and B" Raggacore Raggamuffin Ragtime Rap "Rave Music" Reggae Rock Ska Sonata Soul "String Quartet" Symphony Synthpop Synthpunk Techno Technopop "Tech Trance" Trance
rem colors: White Yellow Blue Red Green Black Brown Azure Ivory Teal Silver Purple "Navy blue" "Pea green" Gray Orange Maroon Charcoal Aquamarine Coral Fuchsia Wheat Lime Crimson Khaki "Hot pink" Magenta  Plum Olive Cyan

set words= electric
rem green blue yellow orange cyan 
for %%i in (%words%) do call :_generate %%i
goto End

rem b "inspired women: 30 | night background explode: 10 | colored face with brush marks: 20 | digital motion : 20 | 3d rotate: 20"
rem c "inspired women: 30 | night background explode: 10 | colored face with brush marks: 20 | digital motion : 20 | rotate face: 10 | veins and muscles: 10 "
rem d "inspired woman partly hidden: 25 | plain white background: 25 | colored face with brush marks: 25 | digital art motion: 15 | tiny veins and muscles: 10"
rem e "inspired woman partly hidden with plain white sheet: 30 | dark background: 10 | black hair: 10 | face with brush colored marks: 30 | digital art motion: 10 | tiny veins and muscles: 6 | green: 1 | yellow: 1 | cyan : 1 | red: 1"
rem f ===> " inspired woman partly hidden with plain white sheet: 30 | dark background: 10 |  face painted with brush colorful marks: 40 | digital art motion: 10 | tiny veins and muscles: 10"
rem final blend : "colorful blending landscape face"

:_generate
set str=%1
set str=%str:"=%
set sanitised=%str: =_%

rem python runlocal.py -orig "http://localhost:3456/" -t 123456789 -u "testlocal" -uid 987654321 -s %resX% %resY% -o %theme%_%sanitised%.jpg -se %saveevery%  -ii %file%  -i %iterations% -ckpt %model% -conf %yaml% -p %sanitised% 
python runlocal.py -orig "http://localhost:3456/" -t 123456789 -u "testlocal" -uid 987654321 -s %resX% %resY% -o %theme%_%sanitised%.jpg -se %saveevery%  -ii %file%  -i %iterations% -ckpt %model% -conf %yaml% -p "cave dripping sand, studio lighting "
:End
