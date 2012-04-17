" Goblin Camp data format
" mostly fragments of c.vim
if exists("b:current_syntax")
    finish
endif

syn keyword gcKeyword      category construction tier dice creature item faction name spell plant attack tier stats resistances equipment
syn keyword gcTags         stockpile walkable permanent unique spawningPool bed door blocksLight farmplot highGround centersCamp bridge wall
syn keyword gcTags         furniture friendly hasHands expert needsNutrition needsSleep hasName coward localWildlife attacksRandomly angers
syn keyword gcTags         underground tunneler flying bleeding claypit helpless concussion immigrant calm migratory aggresive kill steal
syn keyword gcTags         idle destroy patrol flammable collywobbles droops rattles chills drunk sluggish invigorated immaterial harvestable tree evil
syn keyword gcTileType     rock mud grass ditch bog river
syn keyword gcPlacement    normalPlacement wallPlacement rectPlacement
syn keyword gcAttackType   piercing slashing blunt magic fire cold poison wielded
syn keyword gcProperty     tags graphic chimney maxCondition requiredTile materials description color production slowMovement placementType
syn keyword gcProperty     passiveStatusEffects spawns type damage statusEffects title minFarms minProduction minWorkshops minPopulation
syn keyword gcProperty     ai physical cooldown death speed health dodge size strength spawnAsGroup mainHand armor quiver ammo offHand spawnTag
syn keyword gcProperty     friends goals activeTime fruits components constructedIn bulk decaySpeed fitsIn growth containIn multiplier durability
syn keyword gcProperty     decay nutrition addStatusEffects removeStatusEffects containerSize condition rarity cluster minHeight maxHeight
syn keyword gcTodo         contained TODO FIXME XXX
syn cluster gcCommentGroup contains=cTodo
syn region  gcBlock        start="{" end="}" transparent fold

syn case  ignore
syn match gcNumbers display transparent "\<\d\|\.\d" contains=gcNumber,gcFloat,gcDice
syn match gcNumber  display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
syn match gcNumber  display contained "0x\x\+\(u\=l\{0,2}\|ll\=u\)\>"
syn match gcFloat   display contained "\d\+\.\d*\(e[-+]\=\d\+\)\>"
syn match gcDice    display contained "\(\d\+\.\d*x\)\d\+d\d\+\(+\d\+\)\>"
syn match gcDice    display contained "\(\d\+x\)\d\+d\d\+\(+\d\+\)\>"
syn match gcDice    display contained "\d\+d\d\+\(+\d\+\)\>"
syn match gcDice    display contained "\d\+d\d\+\>"
syn match gcDice    display contained "\(\d\+\.\d*x\)\d\+d\d\+\>"
syn case  match

syn match  gcCharacter "L\='[^\\]'"
syn region gcString    start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell

syn match  gcCommentSkip       contained "^\s*\*\($\|\s\+\)"
syn region gcCommentString     contained start=+L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end=+\*/+me=s-1 contains=gcCommentSkip
syn region gcComment2String    contained start=+L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end="$"
syn region gcCommentL          start="//" skip="\\$" end="$" keepend contains=@gcCommentGroup,gcComment2String,gcCharacter,gcNumbers,gcSpaceError,@Spell
syn region gcComment           matchgroup=gcCommentStart start="/\*" end="\*/" contains=@gcCommentGroup,gcCommentStartError,gcCommentString,gcCharacter,gcNumbers,@Spell extend
syn match  gcCommentError      display "\*/"
syn match  gcCommentStartError display "/\*"me=e-1 contained

hi link gcCommentL          gcComment
hi link gcCommentStart      gcComment
hi link gcCharacter         Character
hi link gcNumber            Number
hi link gcFloat             Float
hi link gcCommentError      gcError
hi link gcCommentStartError gcError
hi link gcError             Error
hi link gcCommentString     gcString
hi link gcComment2String    gcString
hi link gcCommentSkip       gcComment
hi link gcString            String
hi link gcComment           Comment
hi link gcTodo              Todo
hi link gcKeyword           Type
hi link gcTags              gcTileType
hi link gcTileType          Statement
hi link gcProperty          PreProc
hi link gcPlacement         gcTileType
hi link gcDice              gcFloat
hi link gcAttackType        gcTileType

let b:current_syntax = "gcdat"
