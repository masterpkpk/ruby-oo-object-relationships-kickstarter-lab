class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select do |pb|
            pb.project == self
        end
        backers.map do |pb|
            pb.backer
        end
    end
end