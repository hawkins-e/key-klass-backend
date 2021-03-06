class ApplicationController < ActionController::API

    def encode_token(payload)
        # payload => { beef: 'steak' }
        JWT.encode(payload, 'my_s3cr3t')
        # jwt string: "eyJhbGciOiJIUzI1NiJ9.eyJiZWVmIjoic3RlYWsifQ._IBTHTLGX35ZJWTCcY30tLmwU9arwdpNVxtVU0NpAuI"
      end
     
      def auth_header
        # { 'Authorization': 'Bearer <token>' }
        request.headers['Authorization']
      end
     
      def decoded_token
        if auth_header
          token = auth_header.split(' ')[1]
          # headers: { 'Authorization': 'Bearer <token>' }
          begin
            JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
            # JWT.decode => [{ "beef"=>"steak" }, { "alg"=>"HS256" }]
          rescue JWT::DecodeError
            nil
          end
        end
    end
end    