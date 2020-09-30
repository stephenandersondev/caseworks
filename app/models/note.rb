class Note < ApplicationRecord
    belongs_to :case

    def format_time
        self.created_at.strftime("%m/%d/%Y at %I:%M%p")
    end

    def created_by
        self.case.social_worker.name
    end
end
