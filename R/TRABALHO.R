#' @export
analise_de_sentimento <- function() {

#1 library syuzhet
library(syuzhet)

#2 a música foi traduzida para o inglês

#3 criação de um vetor
musica <- c('That João de Santo Cristo wasnt afraid Thats what everyone said when he got lost
Left behind all the farm doldrums Just to feel in your blood the hate that Jesus gave you
As a child just being a thug Even more when with a soldiers shot the father died
It was the terror of the sertania where I lived And at school even the teacher with him equipment
Went to church just to steal the money That the old ladies put in the altar box
I really felt like it was different. I felt like that wasnt my place.
He wanted to go out to see the sea And the things he saw on television
Raised money to be able to travel Of choice, chosen solitude I ate all the little girls in town
From so much playing doctor, at twelve he was a teacher At fifteen, he was sent to the reformatory
Where did your hatred grow in the face of so much terror Didnt understand how life worked
Discrimination because of your class and your color Got tired of trying to find the answer
And he bought a ticket, went straight to Salvador And when he got there, he had a cup of coffee.
And he found a cowboy he went to talk to And the cowboy had a ticket and was going to miss the trip
But John went to save him He said Im going to Brasilia In this country there is no better place
I need to visit my daughter I stay here and you go in my place
And John accepted his proposal.And in a bus he entered the Central Plateau
He was astounded by the city Leaving the bus station, saw the Christmas lights
My God, what a beautiful city On New Years I get to work Cutting wood, apprentice carpenter
I earned a hundred thousand a month in Taguatinga On Friday I went to the city area
Spend all your hardworking boy money And met a lot of interesting people
Even your great-grandfathers bastard grandson A Peruvian who lived in Bolivia
And many things brought from there His name was Pablo and he said What a business he was going to start
And the Holy Christ worked until death But the money didnt give him food
And I listened to the news at seven o clock Who always said that his minister would help
But he didnt want to talk anymore And decided that, like Pablo, he would turn around
He worked out his holy plan once more And without being crucified, the planting was to begin
Soon the crazy people in the city heard the news Theres some good stuff there
And João de Santo Cristo got rich And ended up with all the dealers there
Made friends, attended Asa Norte And I went to the rock party, to free myself But suddenly Under the bad influence of the city boy
started stealing Already in the first robbery he danced And to hell he went for the first time
Violence and rape of your body You will see, I will catch you Now the Holy Christ was a bandit
Fearless and feared in the Federal District I had no fear of the police
Captain or drug dealer, playboy or general Thats when he met a girl
And of all his sins he repented Maria Lucia was a beautiful girl And his heart for her the Holy Christ promised
He said he wanted to get married And a carpenter he became again                  Maria Lucia I will love you forever And a child with you I want to have Time passes and one day comes at the door A high-class gentleman with cash in his hand And he makes an unseemly proposition
And says he expects an answer, an answer from João I dont bomb the newsstand
Not even in childrens school I dont do that And I dont protect ten star general
Who is behind the table with his ass in his hand And lord better get out of my house
Never play with a Scorpio rising Pisces But before leaving, with hatred in his eyes, the old man said
You lost your life my brother You lost your life my brother You lost your life my brother
These words will enter the heart Ill suffer the consequences like a dog
Its not that Holy Christ was right His future was uncertain and he didnt go to work.
Got drunk and in the middle of the drunk Found out there was someone else working in his place He spoke to Pablo that he wanted a partner
And he also had money and wanted to arm himself Pablo brought contraband from Bolivia
And Santo Cristo resold in Planaltina But it turns out that a man named Jeremiah
Renowned drug dealer appeared there heard about Santo Cristos plans And he decided that with João he was going to end up
But Pablo brought a Winchester22 And Holy Christ already knew how to shoot And decided to use the weapon only after
Let Jeremiah start fighting jeremiah, shameless pothead Organized Rockonha and made everyone dance
Devirginated innocent girls It was said that he was a believer but did not know how to pray
And Holy Christ hasnt been home for a long time And the longing started to tighten
Im leaving, Im going to see Maria Lucia Its time for us to get married
Coming home then he cried And to hell he went a second time He married Maria Lúcia Jeremias
And a son in her he made Holy Christ it was just hate inside And then Jeremias for a duel he called
Tomorrow at two oclock in Ceilândia In front of Lot 14, thats where Im going
And you can choose your weapons That I really end up with you, you traitor pig
And I also kill Maria Lucia That bosal girl to whom I swore my love And the Holy Christ didnt know what to do
When you saw the television reporter Who gave news of the duel on TV Telling the time and place and the reason
On Saturday then, at two oclock All the people without delay went there just to watch
A man who shot in the back And he hit the Santo Cristo, he started to smile
Feeling the blood in the throat João looked at the flags and the people applauding
And looked at the ice cream man and the cameras and The TV people who filmed everything there
And remembered when he was a child And all that I had lived until then
And decided to enter that dance once and for all If the via crucis became a circus, Im here
And in that the sun blinded your eyes And then Maria Lucia he recognized
She brought the Winchester-22 The gun your cousin Pablo gave you Jeremiah, I am a man. thing you are not
And I dont shoot in the back Look here motherfucker, shameless Take a look at my blood and come feel your forgiveness
And Santo Cristo with Winchester-22 Shot the traitorous bandit five times Maria Lucia regretted later
and he died along with John, his protector And the people declared that João de Santo Cristo He was holy because he knew how to die And the high bourgeoisie of the city Didnt believe the story they saw on TV And John didnt get what he wanted
When he came to Brasilia, with the devil He wanted to talk to the president To help all these people who only do To suffer')

#4 analisando as musicas através da funçao get_sentiment
sentimento <- get_nrc_sentiment(musica)

#5 exibindo a avaliacao
head(sentimento)

#6 criando um grafico com os resultados
barplot(colSums(sentimento),las = 2,ylab = "Quantidade",main = "Sentimentos", col=rainbow(10))

}
