class Worker < ApplicationRecord
    has_many :co_ops, through: :co_op_worker
end
