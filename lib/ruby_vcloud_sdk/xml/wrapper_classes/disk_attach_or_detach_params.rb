module VCloudSdk
  module Xml
    class DiskAttachOrDetachParams < Wrapper
      def disk_href=(value)
        disk = get_nodes("Disk").first
        disk["href"] = value.to_s
      end

      def disk_bus=(bus_num)
        bus = get_nodes("BusNumber").first
        bus.content = bus_num
      end

      def disk_unit=(unit_num)
        unit = get_nodes("UnitNumber").first
        unit.content = unit_num
      end
    end
  end
end
