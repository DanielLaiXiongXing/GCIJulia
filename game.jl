println("Welcome, this is a single-player scissors paper stone game.");
while true
	move=0;
	while true
		println("Please input 1 to play scissors, 2 for paper or 3 for stone");
		move=tryparse(Int, readline());
		move != nothing && 1 <= move <= 3 ? break : println("Invalid input");
	end
	move==1 ? println("You play Scissors") : move==2 ? println("You play Paper") : println("You play Stone");
	aiMove=rand(1:3);
	aiMove==1 ? println("AI plays Scissors") : aiMove==2 ? println("AI plays Paper") : println("AI plays Stone");
	move%3+1==aiMove ? println("You win") : aiMove%3+1==move ? println("You lose") : println("Tie");
	move!=aiMove && break;
end