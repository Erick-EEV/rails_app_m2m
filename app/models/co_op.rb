class CoOp < ApplicationRecord
    has_many :workers, through: :co_op_worker
end
