## ボウリングのすこあを管理するクラス
class Bowling
    # インスタンスを生成する時に処理が実行される
    def initialize
        # スコアの合計
        @total_score = 0
        # 全体のスコアを格納する配列
        @scores = []
        # 一時保存用の配列
        @temp = []
    end

    # スコアの合計を返す
    def total_score
        @total_score
    end

    # スコアを追加する
    def add_score(pins)
        # 一時保存用のスコアに、倒したピンの数を追加する
        @temp << pins
        # 2投分のデータが入っていれば、1フレーム分のスコアとして全体に追加する
        if @temp.size == 2
            @scores << @temp
            @temp = []
        end
    end

    # スコアの合計を計算する
    def calc_score
        @scores.each.with_index(1) do |scores, index|
            # 最終フレーム以外でのスペアなら、スコアにボーナスを含めて合計する
            if score.inject(:+) == 10 && index < 10
                @total_score += 10 + @scores[index].first
            else
                @total_score += score.inject(:+)
            end
        end
    end
end