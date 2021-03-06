module Parliament
  module Grom
    module Decorator
      # Decorator namespace for Grom::Node instances with type: https://id.parliament.uk/schema/WorkPackage
      module WorkPackage
        # Alias workPackageHasProcedure with fallback.
        # NB: Currently, work packages only have one procedure
        #
        # @return [Grom::Node, nil] a Procedure Grom::Node of the Grom::Node or nil.
        def procedure
          respond_to?(:workPackageHasProcedure) ? workPackageHasProcedure.first : nil
        end

        # Alias workPackageHasWorkPackageableThing with fallback.
        # NB: Currently, work packages only have one work packageable thing
        #
        # @return [Grom::Node, nil] a Procedure Grom::Node of the Grom::Node or nil.
        def work_packageable_thing
          respond_to?(:workPackageHasWorkPackageableThing) ? workPackageHasWorkPackageableThing.first : nil
        end

        # Alias workPackageHasBusinessItem with fallback.
        #
        # @return [Array, Array] an array of BusinessItem Grom::Nodes or an empty array.
        def business_items
          respond_to?(:workPackageHasBusinessItem) ? workPackageHasBusinessItem : []
        end
      end
    end
  end
end
