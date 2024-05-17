require "bowling"

describe "ボウリングのスコア計算" do
    describe "全体の合計" do
        context "すべての投球がガーターだった場合" do
            it "0になること" do
                @game.add_score(0)

                20.times do
                    @game.add_score(0)
                end

                expect(@game.total_score).to eq 0
            end
        end

        context "すべての投球で1ピンずつ倒した場合" do
            it "20になること" do
                @game = Bowling.new

                20.times do
                    @game.add_score(1)
                end

                expect(@game.total_score).to eq 20
            end
        end
    end
end